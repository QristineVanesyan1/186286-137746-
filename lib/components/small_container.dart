import 'package:flutter/material.dart';
import 'package:game/gen/assets.gen.dart';

class SmallContainer extends StatelessWidget {
  const SmallContainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.images.smallCard.path),
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
