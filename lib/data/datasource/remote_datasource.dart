import 'package:bip32/bip32.dart' as bip32;
import 'package:bip39/bip39.dart' as bip39;
import 'package:exchange_mobile/core/error/error_exception.dart';
import 'package:exchange_mobile/domain/entities/generated_wallet.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hex/hex.dart';
import 'package:web3dart/web3dart.dart';

abstract class RemoteDataSource {
  //AUTHENTICATION

// RegisterEntity
  Future<String> googleAuth();

  Future<GeneratedWallet> generateSeedPhrase();
  Future<GeneratedWallet> generateWalletFromSeedPhrase(
      {required String mnemonic});
}

class IRemoteDataSource implements RemoteDataSource {
  // final ApiConsumer apiConsumer;

  IRemoteDataSource(
      // {required this.apiConsumer}
      );

  @override
  Future<String> googleAuth() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return credential.toString();
    } catch (e) {
      throw ErrorException(message: e.toString());
    }
  }

  @override
  Future<GeneratedWallet> generateSeedPhrase() async {
    // Generate a random mnemonic (12 words)
    String mnemonic = bip39.generateMnemonic();

    final seed = bip39.mnemonicToSeed(mnemonic);
    print('Mnemonic: $mnemonic');

    // Derive the Ethereum address from the mnemonic
    final node = bip32.BIP32.fromSeed(seed);
    final child = node.derivePath("m/44'/60'/0'/0/0");
    final String privateKey = HEX.encode(child.privateKey!); // Your Private Key

    EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
    EthereumAddress address = credentials.address; // Your Address Object
    String publicAddress = address.hex;

    print('Private Key: $privateKey');
    print('Address: $publicAddress');

    final generatedWallet = GeneratedWallet(
        mnemonics: mnemonic, privateKey: privateKey, publicKey: publicAddress);

    return generatedWallet;
  }

  @override
  Future<GeneratedWallet> generateWalletFromSeedPhrase(
      {required String mnemonic}) async {
    final node = bip32.BIP32.fromSeed(bip39.mnemonicToSeed(mnemonic));
    final child = node.derivePath("m/44'/60'/0'/0/0");
    final String privateKey = HEX.encode(child.privateKey!); // Your Private Key

    EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
    EthereumAddress address = credentials.address; // Your Address Object
    String publicAddress = address.hex;

    final generatedWallet = GeneratedWallet(
        mnemonics: mnemonic, privateKey: privateKey, publicKey: publicAddress);

    print('Private Key: $privateKey');
    print('Address: $publicAddress');

    return generatedWallet;
  }
}
