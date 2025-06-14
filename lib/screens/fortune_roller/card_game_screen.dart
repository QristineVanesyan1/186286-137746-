import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game/components/arrow_left.dart';
import 'package:game/components/arrow_right.dart';
import 'package:game/components/image_scaffold.dart';
import 'package:game/consts/app_dialogs.dart';
import 'package:game/gen/assets.gen.dart';

class CardMatchGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardGameScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CardGameScreen extends StatefulWidget {
  @override
  _CardGameScreenState createState() => _CardGameScreenState();
}

class _CardGameScreenState extends State<CardGameScreen> {
  final List<String> lefts = [
    Assets.background.left1.path,
    Assets.background.left2.path,
    Assets.background.left3.path,
    Assets.background.left4.path,
    Assets.background.left5.path,
    Assets.background.left6.path,
  ];
  final List<String> rights = [
    Assets.background.right1.path,
    Assets.background.right2.path,
    Assets.background.right3.path,
    Assets.background.right4.path,
    Assets.background.right5.path,
    Assets.background.right6.path,
  ];
  String leftCard = Assets.background.left1.path;
  String rightCard = Assets.background.right1.path;

  int get randomIndex => Random().nextInt(rights.length);

  void _spin() {
    setState(() {
      leftCard = lefts[randomIndex];
      rightCard = rights[randomIndex];
    });

    // Проверка совпадения
    if (lefts.indexOf(leftCard) == rights.indexOf(rightCard)) {
      Future.delayed(const Duration(milliseconds: 400), () {
        AppDialogs.showCoinShopDialog(context);
        // showDialog(
        //   context: context,
        //   builder: (_) => AlertDialog(
        //     title: const Text('Поздравляем!'),
        //     content: const Text('Вы собрали карту! Выигрыш ×10'),
        //     actions: [
        //       TextButton(
        //         onPressed: () => Navigator.pop(context),
        //         child: const Text('OK'),
        //       )
        //     ],
        //   ),
        // );
      });
    }
  }

  Widget _buildCardHalf(String name, bool isLeft) {
    return Container(
      width: 120,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(isLeft ? leftCard : rightCard),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
      path: Assets.background.cardGame.path,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: _spin,
                child: const Text('Прокрутить'),
              ),
            ],
          ),
          Positioned.fill(
              child: Column(
            children: [
              Row(
                children: [
                  Assets.images.maxBet.image(),
                  Assets.images.refresh.image(),
                  Assets.images.aRefresh.image()
                ],
              ),
              Row(
                children: [
                  ArrowLeft(
                    onTap: () {},
                  ),
                  ArrowRight(
                    onTap: () {},
                  ),
                ],
              )
            ],
          )),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCardHalf(leftCard, true),
                  _buildCardHalf(rightCard, false),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
