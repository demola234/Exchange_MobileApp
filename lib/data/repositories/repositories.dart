import 'package:dartz/dartz.dart';
import 'package:exchange_mobile/core/error/error_exception.dart';
import 'package:exchange_mobile/core/error/failure.dart';
import 'package:exchange_mobile/data/datasource/remote_datasource.dart';
import 'package:exchange_mobile/domain/entities/generated_wallet.dart';
import 'package:exchange_mobile/domain/repositories/repositories.dart';

class IRepository implements Repository {
  final RemoteDataSource remoteDataSource;

  IRepository({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, String>> googleAuth() async {
    try {
      final response = await remoteDataSource.googleAuth();

      // await authLocalDataSource.saveAccessToken(
      //     token: response.accessToken.token);
      return Right(response);
    } on NotFoundException catch (exception) {
      return Left(Failure.notFoundFailure(exception.message!));
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    } catch (e) {
      return Left(Failure.errorFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, GeneratedWallet>> generateSeedPhrase() async {
    try {
      final response = await remoteDataSource.generateSeedPhrase();

      // await authLocalDataSource.saveAccessToken(
      //     token: response.accessToken.token);
      return Right(response);
    } on NotFoundException catch (exception) {
      return Left(Failure.notFoundFailure(exception.message!));
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    } catch (e) {
      return Left(Failure.errorFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, GeneratedWallet>> generateWalletFromSeedPhrase(
      {required String mnemonic}) async {
    try {
      final response = await remoteDataSource.generateWalletFromSeedPhrase(
          mnemonic: mnemonic);

      return Right(response);
    } on NotFoundException catch (exception) {
      return Left(Failure.notFoundFailure(exception.message!));
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    } catch (e) {
      return Left(Failure.errorFailure(e.toString()));
    }
  }
}
