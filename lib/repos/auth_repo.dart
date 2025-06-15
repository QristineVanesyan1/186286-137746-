import 'package:game/local_data_source/local_data_source.dart';

abstract class AuthRepository {
  Future<void> setSession();
  bool getSession();

  Future<void> setSound(bool val);
  bool getSound();

  Future<void> setMusic(bool val);
  bool getMusic();
}

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({
    required this.localDataSource,
  });
  final LocalDataSource localDataSource;

  @override
  bool getSession() {
    return localDataSource.getSession();
  }

  @override
  Future<void> setSession() async {
    await localDataSource.setSession();
  }

  @override
  bool getMusic() {
    return localDataSource.getMusic();
  }

  @override
  bool getSound() {
    return localDataSource.getSound();
  }

  @override
  Future<void> setMusic(bool val) async {
    await localDataSource.setMusic(val);
  }

  @override
  Future<void> setSound(bool val) async {
    await localDataSource.setSound(val);
  }
}
