part of 'security.dart';

abstract class SecureStorage {
  Future<void> setWalletDetails(GeneratedWallet value);
  Future<GeneratedWallet?> getWalletDetails();

  clearAuthCredentials(String hiveKey);
  Future saveUsersDetails(UserGoogleResponse value, String hiveKey);
  Future<UserGoogleResponse?> getUserDetails(String hiveKey);

  clearAccessToken(String hiveKey);
}

class ISecureStorage implements SecureStorage {
  final FlutterSecureStorage _flutterSecureStorage;

  ISecureStorage(this._flutterSecureStorage);

  @override
  Future<GeneratedWallet?> getWalletDetails() async {
    final walletDetail = await _flutterSecureStorage.read(
      key: SecureStorageKey.wallet,
    );

    final wallet = jsonDecode(walletDetail!);

    // convert userDetails to UserGoogleResponse
    final walletDetails = GeneratedWallet.fromJson(wallet);

    return walletDetails;
  }

  @override
  Future<void> setWalletDetails(GeneratedWallet value) async {
    await _flutterSecureStorage.write(
      key: SecureStorageKey.wallet,
      value: jsonEncode(value.toJson()),
      aOptions: const AndroidOptions(
          encryptedSharedPreferences: true,
          keyCipherAlgorithm:
              KeyCipherAlgorithm.RSA_ECB_OAEPwithSHA_256andMGF1Padding),
      iOptions: const IOSOptions(
        synchronizable: true,
        accessibility: KeychainAccessibility.first_unlock,
      ),
    );

    final walletDetail = await _flutterSecureStorage.read(
      key: SecureStorageKey.wallet,
    );

    final wallet = jsonDecode(walletDetail!);

    // convert userDetails to UserGoogleResponse
    final walletDetails = GeneratedWallet.fromJson(wallet);
    log(walletDetails.toString());
  }

  @override
  clearAuthCredentials(String hiveKey) {
    _flutterSecureStorage.delete(key: hiveKey);
  }

  @override
  clearAccessToken(String hiveKey) {
    _flutterSecureStorage.delete(key: hiveKey);
  }

  @override
  Future<UserGoogleResponse?> getUserDetails(String hiveKey) async {
    final userDetail = await _flutterSecureStorage.read(
      key: hiveKey,
    );
    final user = jsonDecode(userDetail!);

    // convert userDetails to UserGoogleResponse
    final userDetails = UserGoogleResponse.fromJson(user);
    log(userDetails.toString());

    return userDetails;
  }

  @override
  Future saveUsersDetails(UserGoogleResponse value, String hiveKey) async {
    await _flutterSecureStorage.write(
      key: hiveKey,
      value: jsonEncode(value.toJson()),
    );
  }
}
