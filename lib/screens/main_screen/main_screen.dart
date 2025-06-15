import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game/components/app_secondary_button.dart';
import 'package:game/components/dialog_container.dart';
import 'package:game/components/image_scaffold.dart';
import 'package:game/components/title_text.dart';
import 'package:game/consts/app_dialogs.dart';
import 'package:game/consts/app_providers.dart';
import 'package:game/gen/assets.gen.dart';
import 'package:game/screens/main_screen/main_notifier/main_notifier.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  final _mainNotifier = StateNotifierProvider<MainNotifier, MainState>(
    (ref) => MainNotifier(ref.watch(authRepositoryProvider)),
  );
  @override
  void initState() {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ],
    );
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      AppDialogs.showMapDialog(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
      path: Assets.background.map.path,
      body: Row(
        children: [
          Column(
            children: [
              AppSecondaryButton(
                text: 'Menu',
                onTap: () {
                  ref.read(_mainNotifier.notifier).fetchData();
                  AppDialogs.showCoinShopDialog(context);
                  // AppDialogs.showMenuDialog(
                  //   context,
                  //   child: Consumer(
                  //     builder: (context, ref, child) {
                  //       ValueNotifier<bool> _soundValueNotifier =
                  //           ValueNotifier<bool>(
                  //               ref.read(_mainNotifier.notifier).sound);
                  //       ValueNotifier<bool> _musicValueNotifier =
                  //           ValueNotifier<bool>(
                  //               ref.read(_mainNotifier.notifier).music);
                  //       return ValueListenableBuilder(
                  //         valueListenable: _soundValueNotifier,
                  //         builder: (context, sound, child) =>
                  //             ValueListenableBuilder(
                  //           valueListenable: _musicValueNotifier,
                  //           builder: (context, music, child) => Positioned(
                  //             child: Padding(
                  //               padding: const EdgeInsets.only(top: 100.0),
                  //               child: DialogContainer(
                  //                   child: Padding(
                  //                       padding: const EdgeInsets.all(20.0),
                  //                       child: Row(
                  //                         children: [
                  //                           Expanded(
                  //                             child: Column(
                  //                               children: [
                  //                                 TitleText(text: "MUSIC"),
                  //                                 InkWell(
                  //                                   onTap: () {
                  //                                     _musicValueNotifier
                  //                                             .value =
                  //                                         !_musicValueNotifier
                  //                                             .value;
                  //                                     ref
                  //                                         .read(_mainNotifier
                  //                                             .notifier)
                  //                                         .setMusic(
                  //                                             !_musicValueNotifier
                  //                                                 .value);
                  //                                   },
                  //                                   child: SvgPicture.asset(music
                  //                                       ? Assets.svg
                  //                                           .property1Variant2
                  //                                       : Assets.svg
                  //                                           .property1Default),
                  //                                 ),
                  //                               ],
                  //                             ),
                  //                           ),
                  //                           Container(
                  //                             height: 100,
                  //                             width: 1,
                  //                             color: Color(0xff470000),
                  //                           ),
                  //                           Expanded(
                  //                             child: Column(
                  //                               children: [
                  //                                 TitleText(text: "SOUND"),
                  //                                 InkWell(
                  //                                   onTap: () {
                  //                                     _soundValueNotifier
                  //                                             .value =
                  //                                         !_soundValueNotifier
                  //                                             .value;
                  //                                   },
                  //                                   child: SvgPicture.asset(sound
                  //                                       ? Assets.svg
                  //                                           .property1Variant2
                  //                                       : Assets.svg
                  //                                           .property1Default),
                  //                                 ),
                  //                               ],
                  //                             ),
                  //                           ),
                  //                         ],
                  //                       ))),
                  //             ),
                  //           ),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  //   onMusic: (bool value) =>
                  //       ref.read(_mainNotifier.notifier).setMusic(value),
                  //   onSound: (bool value) =>
                  //       ref.read(_mainNotifier.notifier).setSound(value),
                  //   music: ref.read(_mainNotifier.notifier).music,
                  //   sound: ref.read(_mainNotifier.notifier).sound,
                  // );
                },
              ),
              Expanded(child: CardsWidget())
            ],
          ),
        ],
      ),
    );
  }
}

class CardsWidget extends StatelessWidget {
  const CardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      TitleText(
        text: 'Cards',
      ),
      Text(
        "0 or 3",
        style: TextStyle(
          fontFamily: 'AlfaSlabOne',
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w800,
        ),
      ),
      Expanded(
        child: Stack(
          children: [
            Image.asset(
              Assets.background.cards.path,
            ),
            Positioned.fill(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Expanded(
                      child: Image.asset(Assets.background.cuttedSunCsrd.path)),
                  Expanded(
                      child: Image.asset(Assets.background.cuttedSunCsrd.path)),
                  Expanded(child: SvgPicture.asset(Assets.svg.cardUnlocked)),
                ],
              ),
            ))
          ],
        ),
      )
    ]);
  }
}
