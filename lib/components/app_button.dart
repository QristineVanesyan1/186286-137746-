import 'package:flutter/material.dart';
import 'package:game/gen/assets.gen.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Image.asset(Assets.images.button.path),
          Positioned.fill(
              child: Center(
            child: Stack(
              children: <Widget>[
                Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'AlfaSlabOne',
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Color(0xff3D0500),
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'AlfaSlabOne',
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                    color: Color(0xffFAFA00),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
