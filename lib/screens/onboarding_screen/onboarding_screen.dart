import 'package:flutter/material.dart';
import 'package:game/components/bubble_dialog.dart';
import 'package:game/components/image_scaffold.dart';
import 'package:game/components/medium_container.dart';
import 'package:game/components/small_container.dart';
import 'package:game/gen/assets.gen.dart';

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
  const _Story1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story1.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
                text:
                    "In the city of Velgerdent there lived a man thirsty for adventure, from an early age his life was filled with stories about the most interesting places in the world, he immersed himself in beauty and mystery, but only in his imagination when he read the letters of his older brother")
          ],
        ));
  }
}

class _Story2Page extends StatelessWidget {
  const _Story2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story2.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            SmallContainer(
                text:
                    "But his last letter was half a year ago, after which he disappeared, the letter contained the following message")
          ],
        ));
  }
}

class _Story3Page extends StatelessWidget {
  const _Story3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story3.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
                text:
                    '''The other day he received an invitation, sealed with red wax with a stamp in the form of a circus tent, he immediately understood what kind of invitation it was. On the envelope was written in red ink, "Invitation to the show, Circus Through the Looking Glass"''')
          ],
        ));
  }
}

class _Story4Page extends StatelessWidget {
  const _Story4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story4.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
                text:
                    "He froze in thought, was this not an evil joke of fate? One thing he understood for sure, that by going there he would find at least some clues as to where his brother could have disappeared to and what had happened to him.")
          ],
        ));
  }
}

class _Story5Page extends StatelessWidget {
  const _Story5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story5.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
                text:
                    "Having packed the bare necessities into a travel suitcase, he flung open the door and stepped into the cold pool of night. His path was illuminated only by the lonely moon and his heart, which was burning from within - filled with both a burning interest and a quiet, lingering sadness.")
          ],
        ));
  }
}

class _Story6Page extends StatelessWidget {
  const _Story6Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story6.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
                text:
                    "Following the directions in the letter, he lost his way and found himself on a narrow path leading into a dark, dense forest. Somewhere beyond the hillock, a single ray of light was breaking through - it cut through the dense, damp darkness, saturated with the night sounds of the forest. The man froze.")
          ],
        ));
  }
}

class _Story7Page extends StatelessWidget {
  const _Story7Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story7.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
                text:
                    "Following the directions in the letter, he lost his way and found himself on a narrow path leading into a dark, dense forest. Somewhere beyond the hillock, a single ray of light was breaking through - it cut through the dense, damp darkness, saturated with the night sounds of the forest. The man froze.")
          ],
        ));
  }
}

class _Story8Page extends StatelessWidget {
  const _Story8Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story8.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
                text:
                    "Following the directions in the letter, he lost his way and found himself on a narrow path leading into a dark, dense forest. Somewhere beyond the hillock, a single ray of light was breaking through - it cut through the dense, damp darkness, saturated with the night sounds of the forest. The man froze.")
          ],
        ));
  }
}

class _Story9Page extends StatelessWidget {
  const _Story9Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story9.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
                text:
                    "Following the directions in the letter, he lost his way and found himself on a narrow path leading into a dark, dense forest. Somewhere beyond the hillock, a single ray of light was breaking through - it cut through the dense, damp darkness, saturated with the night sounds of the forest. The man froze.")
          ],
        ));
  }
}

class _Story10Page extends StatelessWidget {
  const _Story10Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story10.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
                text:
                    "Following the directions in the letter, he lost his way and found himself on a narrow path leading into a dark, dense forest. Somewhere beyond the hillock, a single ray of light was breaking through - it cut through the dense, damp darkness, saturated with the night sounds of the forest. The man froze.")
          ],
        ));
  }
}

class _Story11Page extends StatelessWidget {
  const _Story11Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story11.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
                text:
                    "Following the directions in the letter, he lost his way and found himself on a narrow path leading into a dark, dense forest. Somewhere beyond the hillock, a single ray of light was breaking through - it cut through the dense, damp darkness, saturated with the night sounds of the forest. The man froze.")
          ],
        ));
  }
}

class _Story12Page extends StatelessWidget {
  const _Story12Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.story12.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumContainer(
                text:
                    "Following the directions in the letter, he lost his way and found himself on a narrow path leading into a dark, dense forest. Somewhere beyond the hillock, a single ray of light was breaking through - it cut through the dense, damp darkness, saturated with the night sounds of the forest. The man froze.")
          ],
        ));
  }
}
