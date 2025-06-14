import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game/components/dialog_container.dart';
import 'package:game/components/image_scaffold.dart';
import 'package:game/components/medium_container.dart';
import 'package:game/consts/app_dialogs.dart';
import 'package:game/gen/assets.gen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.map.path,
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                AppDialogs.showFortuneTellerUnlockDialog(context);
              },
              child: Text("sdkdslfdsf")),
        ));
  }
}
