import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
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
      ],
    );
  }
}
