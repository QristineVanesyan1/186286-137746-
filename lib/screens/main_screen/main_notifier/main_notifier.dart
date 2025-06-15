import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game/repos/auth_repo.dart';
import 'package:riverpod/riverpod.dart';

part 'main_notifier.freezed.dart';
part 'main_state.dart';

class MainNotifier extends StateNotifier<MainState> {
  MainNotifier(this._repository) : super(const MainState.initial());

  final AuthRepository _repository;
  bool music = false;
  bool sound = false;

  Future<void> fetchData() async {
    music = _repository.getMusic();
    sound = _repository.getSound();
    state = MainState.updateState(sound: sound, music: music);
  }

  Future<void> setSound(bool val) async {
    await _repository.setSound(val);
    sound = _repository.getSound();
    state = MainState.updateState(sound: sound, music: music);
  }

  Future<void> setMusic(bool val) async {
    await _repository.setMusic(val);
    music = _repository.getMusic();
    state = MainState.updateState(sound: sound, music: music);
  }
}
