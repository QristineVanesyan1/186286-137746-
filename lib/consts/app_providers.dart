import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:game/local_data_source/local_data_source.dart';
import 'package:game/repos/auth_repo.dart';

import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferences =
    Provider<SharedPreferences>((_) => throw UnimplementedError());

final localDataProvider = Provider<LocalDataSource>((ref) =>
    LocalDataSourceImpl(sharedPreferences: ref.watch(sharedPreferences)));

final authRepositoryProvider =
    Provider<AuthRepository>((ref) => AuthRepositoryImpl(
          localDataSource: ref.watch(localDataProvider),
        ));
