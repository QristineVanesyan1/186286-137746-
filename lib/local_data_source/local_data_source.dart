import 'dart:async';
import 'package:game/consts/app_const.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDataSource {
  Future<void> setSession();
  bool getSession();

  Future<void> setMusic(bool val);
  bool getMusic();

  Future<void> setSound(bool val);
  bool getSound();
}

class LocalDataSourceImpl extends LocalDataSource {
  LocalDataSourceImpl({required this.sharedPreferences});
  SharedPreferences sharedPreferences;

  @override
  bool getSession() {
    return sharedPreferences.getBool(AppConst.session) ?? true;
  }

  @override
  Future<void> setSession() async {
    await sharedPreferences.setBool(AppConst.session, false);
  }

  @override
  bool getMusic() {
    return sharedPreferences.getBool(AppConst.music) ?? true;
  }

  @override
  bool getSound() {
    return sharedPreferences.getBool(AppConst.sound) ?? true;
  }

  @override
  Future<void> setMusic(bool val) async {
    await sharedPreferences.setBool(AppConst.music, val);
  }

  @override
  Future<void> setSound(bool val) async {
    await sharedPreferences.setBool(AppConst.sound, val);
  }
}
