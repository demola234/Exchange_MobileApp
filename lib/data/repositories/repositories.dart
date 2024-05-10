import 'package:dartz/dartz.dart';
import 'package:exchange_mobile/core/error/error_exception.dart';
import 'package:exchange_mobile/core/error/failure.dart';
import 'package:exchange_mobile/data/datasource/local_datasource.dart';
import 'package:exchange_mobile/data/datasource/remote_datasource.dart';
import 'package:exchange_mobile/domain/entities/generated_wallet.dart';
import 'package:exchange_mobile/domain/entities/swap_details_quote.dart';
import 'package:exchange_mobile/domain/entities/token_balance_entity.dart';
import 'package:exchange_mobile/domain/entities/user_google_response.dart';
import 'package:exchange_mobile/domain/repositories/repositories.dart';

class IRepository implements Repository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  IRepository({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, UserGoogleResponse>> googleAuth() async {
    try {
      final response = await remoteDataSource.googleAuth();

      await localDataSource.saveUserDetails(userDetails: response);
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

      await localDataSource.saveSeedPhrase(generateWallet: response);
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

      await localDataSource.saveSeedPhrase(generateWallet: response);
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
  Future<Either<Failure, UserGoogleResponse>> getUserDetails() async {
    try {
      final response = await localDataSource.getLastUserData();

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
  Future<Either<Failure, GeneratedWallet>> getUserWalletSecrets() async {
    try {
      final response = await localDataSource.getSeedPhrase();

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
  Future<Either<Failure, TokenBalanceEntity>> getTokenBalance(
      {required String userAddress, Map<String, dynamic>? tokenAddress}) async {
    try {
      final response = await remoteDataSource.getTokenBalance(
          userAddress: userAddress, tokenAddress: tokenAddress);

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
  Future<Either<Failure, String>> getEthBalance(
      {required String userAddress}) async {
    try {
      final response =
          await remoteDataSource.getEthBalance(userAddress: userAddress);

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
  Future<Either<Failure, SwapDetailsQuote>> getSwapQuote(
      {required String sellToken,
      required String buyToken,
      required String amount}) async {
    print("SWAPPPPPP");
    try {
      print("SWAPPPPPP");
      final response = await remoteDataSource.getSwapQuote(
          sellToken: sellToken, buyToken: buyToken, amount: amount);

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
