part of 'security.dart';

abstract class SecureStorage {
  Future<void> setKey(String value, String dataKey);
  Future<String?> getKey(String dataKey);

  clearAuthCredentials(String hiveKey);
  Future saveAccessToken(String value, String hiveKey);
  Future<String?> getAccessToken(String hiveKey);

  clearAccessToken(String hiveKey);
}

class ISecureStorage implements SecureStorage {
  final FlutterSecureStorage _flutterSecureStorage;

  ISecureStorage(this._flutterSecureStorage);

  @override
  Future<String?> getKey(String dataKey) async {
    return _flutterSecureStorage.read(
      key: dataKey,
    );
  }

  @override
  Future<void> setKey(String value, String dataKey) async {
    await _flutterSecureStorage.write(
      key: dataKey,
      value: value,
      aOptions: const AndroidOptions(
          encryptedSharedPreferences: true,
          keyCipherAlgorithm:
              KeyCipherAlgorithm.RSA_ECB_OAEPwithSHA_256andMGF1Padding),
      iOptions: const IOSOptions(
        synchronizable: true,
        accessibility: KeychainAccessibility.first_unlock,
      ),
    );
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
  Future<String?> getAccessToken(String hiveKey) async {
    return _flutterSecureStorage.read(
      key: hiveKey,
    );
  }

  @override
  Future saveAccessToken(String value, String hiveKey) async {
    await _flutterSecureStorage.write(
      key: hiveKey,
      value: value,
    );
  }
}
