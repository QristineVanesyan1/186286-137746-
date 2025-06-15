import 'package:flutter/material.dart';
import 'package:game/components/image_scaffold.dart';
import 'dart:math' as math;

import 'package:game/gen/assets.gen.dart';

class HighStrikerGame extends StatefulWidget {
  @override
  _HighStrikerGameState createState() => _HighStrikerGameState();
}

class _HighStrikerGameState extends State<HighStrikerGame>
    with SingleTickerProviderStateMixin {
  int betAmount = 100;
  double meterHeight = 0;
  bool isAnimating = false;
  late AnimationController _controller;
  late Animation<double> _rotation;
  final math.Random _random = math.Random();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1200));
  }

  void _hit() {
    if (isAnimating) return;

    final strength = _random.nextDouble(); // 0.0 - 1.0
    final targetHeight = strength * 250;

    _rotation = Tween<double>(begin: -1.0, end: 1.0).animate(_controller);
    // ..addListener(() {
    //   setState(() {
    //     meterHeight = _animation.value;
    //   });
    // })
    // ..addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     setState(() => isAnimating = false);
    //   }
    // });

    setState(() => isAnimating = true);
    _controller.forward(from: 0);
  }

  String _getMultiplier() {
    if (meterHeight > 230) return "20x";
    if (meterHeight > 200) return "15x";
    if (meterHeight > 160) return "10x";
    if (meterHeight > 100) return "5x";
    if (meterHeight > 50) return "2x";
    return "0x";
  }

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
      path: Assets.background.attractionOfPowerBackground.path,
      body: Stack(
        children: [
          Positioned(
            left: 30,
            bottom: 0,
            child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: Image.asset(
                  Assets.background.strongman.path,
                  width: 197,
                )),
          ),
          Positioned(
            right: 50,
            bottom: 0,
            child: Column(
              children: [
                // Stack(
                //   alignment: Alignment.bottomCenter,
                //   children: [
                //     Image.asset(Assets.background.highStrikerMachine.path,
                //         height: 300),
                //     Container(
                //       width: 20,
                //       height: meterHeight,
                //       color: Colors.redAccent,
                //     ),
                //   ],
                // ),
                RotateHammerAnimation(),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _hit,
                  child: Text("HIT!"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
                SizedBox(height: 10),
                Text("Bet: $betAmount"),
                Text("Win: ${_getMultiplier()}"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class RotateHammerAnimation extends StatefulWidget {
  @override
  _RotateHammerAnimationState createState() => _RotateHammerAnimationState();
}

class _RotateHammerAnimationState extends State<RotateHammerAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _rotation = Tween<double>(
      begin: math.pi / 2, // 90°
      end: math.pi, // 180°
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[800],
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    _controller.forward();
                  });
                },
                child: Text('Start!')),
            AnimatedBuilder(
              animation: _rotation,
              builder: (_, child) {
                return Transform.rotate(
                  angle: _rotation.value,
                  alignment: Alignment.bottomCenter, // Вращение снизу
                  child: child,
                );
              },
              child: Image.asset(Assets.background.hummer.path, height: 200),
            ),
          ],
        ),
      ),
    );
  }
}
