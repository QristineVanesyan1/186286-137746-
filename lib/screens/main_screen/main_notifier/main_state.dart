part of 'main_notifier.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = _Initial;
  const factory MainState.updateState({
    required bool sound,
    required bool music,
  }) = _UpdateState;
}
