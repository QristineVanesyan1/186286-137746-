import 'package:flutter/material.dart';
import 'package:game/components/app_button.dart';
import 'package:game/components/bubble_dialog.dart';
import 'package:game/components/image_scaffold.dart';
import 'package:game/components/medium_container.dart';
import 'package:game/components/small_container.dart';
import 'package:game/gen/assets.gen.dart';
import 'package:game/screens/main_screen/main_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Widget> _pages = const [
    _Story1Page(),
    _Story2Page(),
    _Story3Page(),
    _Story4Page(),
    _Story5Page(),
    _Story12Page(),
    _Story6Page(),
    _Story7Page(),
    _Story8Page(),
    _Story9Page(),
    _Story10Page(),
    _Story11Page(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      itemCount: _pages.length,
      itemBuilder: (context, index) => _pages[index],
    ));
  }
}

class _Story1Page extends StatelessWidget {
  const _Story1Page();

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story1.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
              child: TextWidget(
                  text:
                      "In the city of Velgerdent there lived a man thirsty for adventure, from an early age his life was filled with stories about the most interesting places in the world, he immersed himself in beauty and mystery, but only in his imagination when he read the letters of his older brother"),
            )
          ],
        ));
  }
}

class _Story2Page extends StatelessWidget {
  const _Story2Page();

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story2.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            SmallContainer(
                child: TextWidget(
                    text:
                        "But his last letter was half a year ago, after which he disappeared, the letter contained the following message"))
          ],
        ));
  }
}

class _Story3Page extends StatelessWidget {
  const _Story3Page();

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story3.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
                child: TextWidget(
                    text:
                        '''The other day he received an invitation, sealed with red wax with a stamp in the form of a circus tent, he immediately understood what kind of invitation it was. On the envelope was written in red ink, "Invitation to the show, Circus Through the Looking Glass"'''))
          ],
        ));
  }
}

class _Story4Page extends StatelessWidget {
  const _Story4Page();

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story4.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
                child: TextWidget(
                    text:
                        "He froze in thought, was this not an evil joke of fate? One thing he understood for sure, that by going there he would find at least some clues as to where his brother could have disappeared to and what had happened to him."))
          ],
        ));
  }
}

class _Story5Page extends StatelessWidget {
  const _Story5Page();

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story5.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
                child: TextWidget(
                    text:
                        "Having packed the bare necessities into a travel suitcase, he flung open the door and stepped into the cold pool of night. His path was illuminated only by the lonely moon and his heart, which was burning from within - filled with both a burning interest and a quiet, lingering sadness."))
          ],
        ));
  }
}

class _Story6Page extends StatelessWidget {
  const _Story6Page();

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story6.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BubbleDialog(
                alignment: Alignment.centerRight,
                child: TextWidget(
                    text:
                        "He sensed in his gut that this was the place - a circus lost in the wilderness. With every step the sounds became clearer: the ringing of slot machines, the distant cries of the audience and snatches of circus music formed a secret anticipation of a miracle."))
          ],
        ));
  }
}

class _Story7Page extends StatelessWidget {
  const _Story7Page();

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story7.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BubbleDialog(
                alignment: Alignment.centerRight,
                child: TextWidget(
                    text:
                        "Moving on, he saw a tall metal arch with gold lettering on a scarlet background. It twinkled with lights like stars. Behind it, a circus tent rose majestically, hiding the very secret that led him through the night."))
          ],
        ));
  }
}

class _Story8Page extends StatelessWidget {
  const _Story8Page();

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story8.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BubbleDialog(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleTextWidget(text: 'Magician:'),
                  SizedBox(height: 8),
                  TextWidget(
                      text:
                          "Passing under the arch, two figures seemed to appear out of nowhere. In this semi-darkness it suddenly became light - light from the warm smile of the girl, who calmly and velvetily said:"),
                ],
              ),
            ),
            Spacer(),
            BubbleDialog(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleTextWidget(text: 'Young woman:'),
                    SizedBox(height: 8),
                    TextWidget(
                        text:
                            "Greetings, traveler! It is a joy to see that you have responded to our invitation. Everyone who finds their way to us carries within them aspiration and desire. And what brought you here?"),
                  ],
                ))
          ],
        ));
  }
}

class _Story9Page extends StatelessWidget {
  const _Story9Page();

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story9.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BubbleDialog(
              alignment: Alignment.centerRight,
              child: TextWidget(
                  text:
                      "I'm looking for my brother, he's missing. The last letter I got from him mentioned this place. Have you ever met a tall, broad-shouldered man like me?"),
            )
          ],
        ));
  }
}

class _Story10Page extends StatelessWidget {
  const _Story10Page();

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story10.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BubbleDialog(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleTextWidget(text: 'Magician:'),
                  SizedBox(height: 8),
                  TextWidget(
                      text:
                          "I don't remember any, but I have an idea. Go to the fortune teller Sayra - she knows the answers to any questions, but the trainer's animals stole a couple of cards from her deck. Find them on the circus grounds, and she will help you."),
                ],
              ),
            ),
            Spacer(),
            BubbleDialog(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleTextWidget(text: 'Young woman:'),
                    SizedBox(height: 8),
                    TextWidget(
                        text:
                            "Hmm, I don't remember that, are you Steve? - The girl turned to the man next to him."),
                  ],
                ))
          ],
        ));
  }
}

class _Story11Page extends StatelessWidget {
  const _Story11Page();

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story11.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BubbleDialog(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleTextWidget(text: 'Young woman:'),
                    SizedBox(height: 8),
                    TextWidget(
                        text:
                            "To find the cards, you need to search all the locations of the circus, the map will help you with this, here. Good luck in your search!"),
                  ],
                )),
            AppButton(
              text: 'Start',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
            )
          ],
        ));
  }
}

class _Story12Page extends StatelessWidget {
  const _Story12Page();

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story12.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            MediumContainer(
                child: TextWidget(
              text:
                  "Following the directions in the letter, he lost his way and found himself on a narrow path leading into a dark, dense forest. Somewhere beyond the hillock, a single ray of light was breaking through - it cut through the dense, damp darkness, saturated with the night sounds of the forest. The man froze.",
            ))
          ],
        ));
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontFamily: 'Poppins'),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily: 'Poppins'),
    );
  }
}
