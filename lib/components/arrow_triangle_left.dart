import 'package:flutter/material.dart';
import 'package:game/gen/assets.gen.dart';
import 'dart:math' as math;

class ArrowTriangleLeft extends StatelessWidget {
  const ArrowTriangleLeft({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: Image.asset(
              Assets.background.shapeTriangle.path,
              height: 100,
            )));
  }
}
