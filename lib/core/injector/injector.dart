import 'package:exchange_mobile/core/api/api_consumer.dart';
import 'package:exchange_mobile/core/api/dio_consumer.dart';
import 'package:exchange_mobile/core/security/security.dart';
import 'package:exchange_mobile/data/datasource/local_datasource.dart';
import 'package:exchange_mobile/data/datasource/remote_datasource.dart';
import 'package:exchange_mobile/data/repositories/repositories.dart';
import 'package:exchange_mobile/domain/repositories/repositories.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> injector() async {
  //Repository
  sl.registerLazySingleton<Repository>(
    () => IRepository(
      localDataSource: sl(),
      remoteDataSource: sl(),
    ),
  );

  // Repository
  sl.registerLazySingleton<LocalDataSource>(
    () => ILocalDataSource(),
  );

  // Local Auth
  sl.registerLazySingleton<SecureStorage>(
      () => ISecureStorage(const FlutterSecureStorage()));

  // ApiConsumer
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer());

  // DataSources
  sl.registerLazySingleton<RemoteDataSource>(
    () => IRemoteDataSource(
        apiConsumer: sl(),
        ),
  );
}
