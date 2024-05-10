import 'package:dartz/dartz.dart';
import 'package:exchange_mobile/core/error/failure.dart';
import 'package:exchange_mobile/domain/entities/generated_wallet.dart';
import 'package:exchange_mobile/domain/entities/swap_details_quote.dart';
import 'package:exchange_mobile/domain/entities/token_balance_entity.dart';
import 'package:exchange_mobile/domain/entities/user_google_response.dart';

abstract class Repository {
  // SIGN UP
  Future<Either<Failure, UserGoogleResponse>> googleAuth();

  Future<Either<Failure, UserGoogleResponse>> getUserDetails();

  Future<Either<Failure, GeneratedWallet>> getUserWalletSecrets();

  // Generate Seed Phrase
  Future<Either<Failure, GeneratedWallet>> generateSeedPhrase();

  Future<Either<Failure, GeneratedWallet>> generateWalletFromSeedPhrase(
      {required String mnemonic});

  // Token Balance
  Future<Either<Failure, TokenBalanceEntity>> getTokenBalance(
      {required String userAddress, Map<String, dynamic>? tokenAddress});

  // ETH Balance
  Future<Either<Failure, String>> getEthBalance({required String userAddress});

  // Swap Quotes

  Future<Either<Failure, SwapDetailsQuote>> getSwapQuote(
      {required String sellToken,
      required String buyToken,
      required String amount});
}
