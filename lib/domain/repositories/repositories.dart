import 'package:dartz/dartz.dart';
import 'package:exchange_mobile/core/error/failure.dart';
import 'package:exchange_mobile/domain/entities/generated_wallet.dart';

abstract class Repository {
  // SIGN UP
  Future<Either<Failure, String>> googleAuth();

  // Generate Seed Phrase
  Future<Either<Failure, GeneratedWallet>> generateSeedPhrase();

  Future<Either<Failure, GeneratedWallet>> generateWalletFromSeedPhrase(
      {required String mnemonic});
}
