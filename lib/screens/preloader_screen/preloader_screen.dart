import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:game/consts/app_providers.dart';
import 'package:game/screens/main_screen/main_screen.dart';
import 'package:game/screens/onboarding_screen/onboarding_screen.dart';
import 'package:game/screens/preloader_screen/routing_notifier/routing_notifier.dart';

class PreloaderScreen extends StatefulWidget {
  const PreloaderScreen({super.key});

  @override
  State<PreloaderScreen> createState() => _PreloaderScreenState();
}

class _PreloaderScreenState extends State<PreloaderScreen> {
  final _routingNotifierProvider =
      StateNotifierProvider<RoutingNotifier, RoutingState>(
    (ref) =>
        RoutingNotifier(ref.watch(authRepositoryProvider))..getSessionInfo(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
      ref.listen(
        _routingNotifierProvider,
        (_, state) => state.mapOrNull(main: (value) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const MainScreen()));
          return;
        }, onboarding: (value) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const OnboardingScreen()));
          return;
        }),
      );
      return Center(
        child: Column(
          children: [
            const Center(
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      );
    }));
  }
}
