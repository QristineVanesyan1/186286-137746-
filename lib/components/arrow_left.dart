import 'package:flutter/material.dart';
import 'package:game/gen/assets.gen.dart';

class ArrowLeft extends StatelessWidget {
  const ArrowLeft({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap, child: Image.asset(Assets.images.leftArrow.path));
  }
}
