import 'package:flutter/material.dart';
import 'package:game/gen/assets.gen.dart';

class ArrowTriangleRight extends StatelessWidget {
  const ArrowTriangleRight({super.key, required this.onTap});

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        Assets.background.shapeTriangle.path,
      ),
    );
  }
}
