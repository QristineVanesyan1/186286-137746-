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
  late Animation<double> _animation;
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

    _animation =
        Tween<double>(begin: 0, end: targetHeight).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ))
          ..addListener(() {
            setState(() {
              meterHeight = _animation.value;
            });
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              setState(() => isAnimating = false);
            }
          });

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
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(Assets.background.highStrikerMachine.path,
                        height: 300),
                    Container(
                      width: 20,
                      height: meterHeight,
                      color: Colors.redAccent,
                    ),
                  ],
                ),
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

class HammerSwing extends StatefulWidget {
  const HammerSwing({super.key});

  @override
  State<HammerSwing> createState() => _HammerSwingState();
}

class _HammerSwingState extends State<HammerSwing>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late TweenSequence<double> _rotation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(milliseconds: 700),
      vsync: this,
    );

    // _rotation = TweenSequence<double>([
    //   TweenSequenceItem(tween: Tween(begin: -pi / 4, end: pi / 8), weight: 70),
    //   TweenSequenceItem(tween: Tween(begin: pi / 8, end: 0), weight: 30),
    // ]).animate(CurvedAnimation(
    //   parent: _controller,
    //   curve: Curves.easeInOut,
    // ));

    // Optional auto-play
    Future.delayed(Duration(milliseconds: 300), () {
      _controller.forward();
    });
  }

  void _swingHammer() {
    _controller.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      body: Center(
        child: GestureDetector(
          onTap: _swingHammer,
          child: AnimatedBuilder(
            animation: _rotation,
            builder: (_, child) {
              return Transform.rotate(
                angle: _rotation.value,
                alignment: Alignment.bottomLeft,
                child: child,
              );
            },
            child: Image.asset(
              Assets.background.hummer
                  .path, // Your hammer image (use the one you showed)
              width: 150,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
