import 'package:flutter/material.dart';
import 'package:game/gen/assets.gen.dart';

class AppSecondaryButton extends StatelessWidget {
  const AppSecondaryButton(
      {super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Image.asset(
            Assets.background.shapeOval.path,
            height: 85,
            width: 90,
          ),
          Positioned.fill(
              child: Center(
            child: Stack(
              children: <Widget>[
                Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'AlfaSlabOne',
                    fontSize: 14,
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
                    fontSize: 14,
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
