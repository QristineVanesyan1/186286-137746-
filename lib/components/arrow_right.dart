import 'package:flutter/material.dart';
import 'package:game/gen/assets.gen.dart';
import 'dart:math' as math;

class ArrowRight extends StatelessWidget {
  const ArrowRight({super.key, required this.onTap});

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(math.pi),
        child: Image.asset(Assets.images.leftArrow.path),
      ),
    );
  }
}
