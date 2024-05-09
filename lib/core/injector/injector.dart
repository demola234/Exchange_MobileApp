import 'package:exchange_mobile/data/datasource/remote_datasource.dart';
import 'package:exchange_mobile/data/repositories/repositories.dart';
import 'package:exchange_mobile/domain/repositories/repositories.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> injector() async {
  //Repository
  sl.registerLazySingleton<Repository>(
    () => IRepository(
      remoteDataSource: sl(),
      // authLocalDataSource: authLocator(),
    ),
  );

  // Repository
  // authLocator.registerLazySingleton<AuthLocalDataSource>(
  //   () => IAuthLocalDataSource(),
  // );

  // DataSources
  sl.registerLazySingleton<RemoteDataSource>(
    () => IRemoteDataSource(
        // apiConsumer: authLocator(),
        ),
  );
}
