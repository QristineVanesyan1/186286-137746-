import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game/repos/auth_repo.dart';
import 'package:riverpod/riverpod.dart';

part 'routing_notifier.freezed.dart';
part 'routing_state.dart';

class RoutingNotifier extends StateNotifier<RoutingState> {
  RoutingNotifier(this._repository) : super(const RoutingState.initial());

  final AuthRepository _repository;

  Future<void> getSessionInfo() async {
    bool isFirst = await _repository.getSession();
    if (isFirst) {
      await setSession();

      state = const RoutingState.onboarding();
    } else {
      state = const RoutingState.main();
    }
  }

  Future<void> setSession() async {
    await _repository.setSession();
  }
}
