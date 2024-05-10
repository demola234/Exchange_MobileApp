import 'dart:developer';

import 'package:exchange_mobile/domain/entities/generated_wallet.dart';
import 'package:exchange_mobile/domain/entities/user_google_response.dart';

import '../../../../core/injector/injector.dart';
import '../../../../core/security/security.dart';

abstract class LocalDataSource {
  Future<UserGoogleResponse> getLastUserData();

  Future<UserGoogleResponse> getUserDetails();

  saveUserDetails({
    required UserGoogleResponse userDetails,
  });

  Future<void> saveSeedPhrase({required GeneratedWallet generateWallet});

  Future<GeneratedWallet> getSeedPhrase();
}

class ILocalDataSource implements LocalDataSource {
  @override
  Future<UserGoogleResponse> getLastUserData() async {
    final cache = sl<SecureStorage>();

    final saveDetails = await cache.getUserDetails(SecureStorageKey.userLogin);
    if (saveDetails != null) {
      return saveDetails;
    } else {
      return UserGoogleResponse();
    }
  }

  @override
  saveUserDetails({
    required UserGoogleResponse userDetails,
  }) async {
    final cache = sl<SecureStorage>();

    try {
      final saveDetails =
          await cache.saveUsersDetails(userDetails, SecureStorageKey.userLogin);
      if (saveDetails != null) {
        return saveDetails;
      } else {
        return null;
      }
    } catch (e) {
      log('Error getting token: $e');
      return null;
    }
  }

  @override
  Future<UserGoogleResponse> getUserDetails() async {
    final cache = sl<SecureStorage>();

    final saveDetails = await cache.getUserDetails(SecureStorageKey.userLogin);
    log('Tokens: $saveDetails');

    if (saveDetails != null) {
      return saveDetails;
    } else {
      return UserGoogleResponse();
    }
  }

  @override
  Future<GeneratedWallet> getSeedPhrase() async {
    final cache = sl<SecureStorage>();

    final saveDetails = await cache.getWalletDetails();
    log('Tokens: $saveDetails');

    if (saveDetails != null) {
      return saveDetails;
    } else {
      return GeneratedWallet();
    }
  }

  @override
  Future<void> saveSeedPhrase({required GeneratedWallet generateWallet}) async {
    final cache = sl<SecureStorage>();

    try {
      final saveDetails = await cache.setWalletDetails(generateWallet);
      return saveDetails;
    } catch (e) {
      log('Error getting token: $e');
      return;
    }
  }
}
