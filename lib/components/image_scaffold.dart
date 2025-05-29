import 'package:flutter/material.dart';

class ImageScaffold extends StatelessWidget {
  const ImageScaffold({super.key, required this.path, required this.body});
  final String path;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          path,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Positioned(child: SafeArea(child: body))
      ],
    ));
  }
}
