import 'package:flutter/material.dart';
import 'package:game/gen/assets.gen.dart';
import 'dart:math' as math;

class BubbleDialog extends StatelessWidget {
  const BubbleDialog({super.key, required this.text, required this.alignment});
  final String text;
  final Alignment alignment;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        alignment == Alignment.centerLeft
            ? Image.asset(Assets.images.bubble.path)
            : Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: Image.asset(Assets.images.bubble.path),
              ),
        Positioned.fill(
            child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ))
      ],
    );
  }
}
