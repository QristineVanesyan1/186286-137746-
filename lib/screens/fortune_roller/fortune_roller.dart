import 'package:flutter/material.dart';
import 'package:game/components/app_button.dart';
import 'package:game/components/bubble_dialog.dart';
import 'package:game/components/image_scaffold.dart';
import 'package:game/gen/assets.gen.dart';
import 'package:game/screens/onboarding_screen/onboarding_screen.dart';

class FortuneRollerScreen extends StatefulWidget {
  const FortuneRollerScreen({super.key});

  @override
  State<FortuneRollerScreen> createState() => _FortuneRollerScreenState();
}

class _FortuneRollerScreenState extends State<FortuneRollerScreen> {
  final List<Widget> _pages = [_FortuneRoller1(), _FortuneRoller2()];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: _pages.length,
      itemBuilder: (context, index) => _pages[index],
    );
  }
}

class _FortuneRoller1 extends StatelessWidget {
  const _FortuneRoller1({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.fortuneReller1.path,
        body: Scaffold(
          backgroundColor: Colors.transparent,
          body: Row(
            children: [
              Spacer(),
              _FortuneBubbleWidget(
                  text:
                      "Finally I found her! It's dark and mysterious inside, I need to be careful. I have all the cards, I hope she will answer my questions.",
                  onTap: () {})
            ],
          ),
        ));
  }
}

class _FortuneRoller2 extends StatelessWidget {
  const _FortuneRoller2({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.fortuneReller2.path,
        body: Scaffold(
          backgroundColor: Colors.transparent,
          body: Row(
            children: [
              Spacer(),
              _FortuneBubbleWidget(
                  text:
                      "Well, hello, I've heard a lot about you, traveler. Thank you for finding my cards! A circus raccoon got into my tent and scattered them all over the circus, you helped me out! In gratitude, I'll tell your fortune, sit down.",
                  onTap: () {})
            ],
          ),
        ));
  }
}

class _FortuneBubbleWidget extends StatelessWidget {
  const _FortuneBubbleWidget(
      {super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width / 100),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Positioned(
            child: Container(
              padding: EdgeInsets.only(bottom: 30),
              child: BubbleDialog(
                  alignment: Alignment.topRight,
                  child: TextWidget(
                    text: text,
                  )),
            ),
          ),
          Positioned.fill(
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: AppButton(text: 'Continue', onTap: onTap),
                )),
          )
        ],
      ),
    );
  }
}
