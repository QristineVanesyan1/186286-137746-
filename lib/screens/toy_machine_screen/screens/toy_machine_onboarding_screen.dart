import 'package:flutter/material.dart';
import 'package:game/components/app_button.dart';
import 'package:game/components/bubble_dialog.dart';
import 'package:game/components/image_scaffold.dart';
import 'package:game/gen/assets.gen.dart';
import 'package:game/screens/onboarding_screen/onboarding_screen.dart';

class ToyMachineOnboardingScreen extends StatelessWidget {
  const ToyMachineOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageScaffold(
        path: Assets.background.toyMachine.path,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 300,
              child: BubbleDialog(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                        text:
                            "It was unexpected to come across such a machine among the trees, it’s good that they gave me a map, I would hardly have found it on my own. Is that a card in the slot of the machine?"),
                  ],
                ),
              ),
            ),
            AppButton(text: 'Continue', onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
              ToyMachineOnboardingScreen()
              ));
            }),
          ],
        ));
  }
}
