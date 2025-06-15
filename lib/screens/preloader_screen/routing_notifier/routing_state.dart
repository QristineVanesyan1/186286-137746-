part of 'routing_notifier.dart';

@freezed
class RoutingState with _$RoutingState {
  const factory RoutingState.initial() = _Initial;
  const factory RoutingState.onboarding() = _Onboarding;
  const factory RoutingState.main() = _Main;
}
