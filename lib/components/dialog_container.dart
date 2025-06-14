import 'package:flutter/material.dart';
import 'package:game/gen/assets.gen.dart';

class DialogContainer extends StatelessWidget {
  const DialogContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.images.dialog.path,
          height: 145,
          width: 285,
        ),
        Positioned.fill(
            child: Container(padding: const EdgeInsets.all(25.0), child: child))
      ],
    );
  }
}
