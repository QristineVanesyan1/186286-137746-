import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game/components/app_button.dart';
import 'package:game/components/dialog_container.dart';
import 'package:game/components/title_text.dart';
import 'package:game/gen/assets.gen.dart';

class AppDialogs {
  static void showMapDialog(BuildContext context) {
    showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "BlurredDialog",
      context: context,
      pageBuilder: (_, __, ___) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Center(
            child: Material(
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: SvgPicture.asset(Assets.svg.close)),
                    DialogContainer(
                        child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Play games to unlock new locations and collect tarot cards.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'AlfaSlabOne',
                            fontSize: 14),
                      ),
                    )),
                    SizedBox(height: 24)
                  ],
                )),
          ),
        );
      },
    );
  }

  static void showCoinShopDialog(BuildContext context) {
    showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "BlurredDialog",
      context: context,
      pageBuilder: (_, __, ___) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Center(
            child: Material(
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: SvgPicture.asset(Assets.svg.close)),
                    Stack(
                      children: [
                        Positioned.fill(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(Assets.background.shop1.path),
                                    Image.asset(Assets.background.shop2.path),
                                    Image.asset(Assets.background.shop3.path),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Image.asset(Assets.images.coinShop.path,
                            height: MediaQuery.of(context).size.height - 100),
                      ],
                    ),
                  ],
                )),
          ),
        );
      },
    );
  }

  static void showMenuDialog(BuildContext context,
      {required bool music,
      required bool sound,
      required ValueChanged<bool> onMusic,
      required ValueChanged<bool> onSound,
      required Widget child}) {
    ValueNotifier<bool> _soundValueNotifer = ValueNotifier<bool>(sound);
    ValueNotifier<bool> _musicValueNotifer = ValueNotifier<bool>(music);

    showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "BlurredDialog",
      context: context,
      pageBuilder: (_, __, ___) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Center(
            child: Material(
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      fit: StackFit.loose,
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                                onTap: () => Navigator.of(context).pop(),
                                child: SvgPicture.asset(Assets.svg.close)),
                          ),
                        ),
                        child,
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              Assets.images.menu.path,
                              height: 150,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24)
                  ],
                )),
          ),
        );
      },
    );
  }

  static void showFortuneTellerUnlockDialog(BuildContext context) {
    showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "BlurredDialog",
      context: context,
      pageBuilder: (_, __, ___) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Center(
            child: Material(
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Image.asset(Assets.background.light.path),
                    Positioned.fill(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            Assets.background.lock.path,
                            height: MediaQuery.of(context).size.height / 3,
                          ),
                          DialogContainer(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              children: [
                                Text(
                                  "Congratulations! You have opened a new location",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'AlfaSlabOne',
                                      fontSize: 14),
                                ),
                                Text(
                                  'Fortune Teller',
                                  style: TextStyle(
                                      color: Color(0xffFAFA00),
                                      fontFamily: 'AlfaSlabOne',
                                      fontSize: 14),
                                )
                              ],
                            ),
                          )),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppButton(
                                  text: 'Menu',
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  }),
                              SizedBox(width: 10),
                              AppButton(
                                  text: 'Continue',
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  }),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                )),
          ),
        );
      },
    );
  }
}
