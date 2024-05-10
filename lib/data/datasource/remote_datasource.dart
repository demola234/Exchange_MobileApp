import 'dart:developer';

import 'package:bip32/bip32.dart' as bip32;
import 'package:bip39/bip39.dart' as bip39;
import 'package:exchange_mobile/core/api/api_consumer.dart';
import 'package:exchange_mobile/core/api/endpoint_management.dart';
import 'package:exchange_mobile/core/dio_response/dio_base_response.dart';
import 'package:exchange_mobile/core/error/error_exception.dart';
import 'package:exchange_mobile/domain/entities/generated_wallet.dart';
import 'package:exchange_mobile/domain/entities/swap_details_quote.dart';
import 'package:exchange_mobile/domain/entities/token_balance_entity.dart';
import 'package:exchange_mobile/domain/entities/user_google_response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hex/hex.dart';
import 'package:web3dart/web3dart.dart';

abstract class RemoteDataSource {
  //AUTHENTICATION

// RegisterEntity
  Future<UserGoogleResponse> googleAuth();

  Future<GeneratedWallet> generateSeedPhrase();
  Future<GeneratedWallet> generateWalletFromSeedPhrase(
      {required String mnemonic});

  Future<TokenBalanceEntity> getTokenBalance(
      {required String userAddress, Map<String, dynamic>? tokenAddress});

  Future<String> getEthBalance({required String userAddress});

  Future<SwapDetailsQuote> getSwapQuote(
      {required String sellToken,
      required String buyToken,
      required String amount});
}

class IRemoteDataSource implements RemoteDataSource {
  final ApiConsumer apiConsumer;

  IRemoteDataSource({required this.apiConsumer});

  @override
  Future<UserGoogleResponse> googleAuth() async {
    try {
      // Check if the user is already signed in.
      final User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        // User is already signed in.
        return UserGoogleResponse(
          displayName: user.displayName,
          email: user.email,
          id: user.uid,
          photoUrl: user.photoURL,
        );
      } else {
        // User is not signed in.
        return _signInWithGoogle();
      }
    } catch (e) {
      throw ErrorException(message: e.toString());
    }
  }

  Future<UserGoogleResponse> _signInWithGoogle() async {
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

    await FirebaseAuth.instance.signInWithCredential(credential);

    UserGoogleResponse userResponse = UserGoogleResponse(
      displayName: googleUser!.displayName,
      email: googleUser.email,
      id: googleUser.id,
      photoUrl: googleUser.photoUrl,
    );

    return userResponse;
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

  @override
  Future<TokenBalanceEntity> getTokenBalance(
      {required String userAddress, Map<String, dynamic>? tokenAddress}) async {
    final moralisApiKey = dotenv.env['MORALIS_API_KEY']!;
    final response = await apiConsumer.get(
        url: EndpointManager.tokenBalance(userAddress),
        // params should be a Map<String, dynamic> were tokenAddress is the key and the value is the address key is always token_addresses
        params: {
          "token_addresses%5B0%5D":
              "0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE",
          "token_addresses%5B1%5D": tokenAddress!.values.first.toString(),
        },
        headers: {
          'X-API-Key': moralisApiKey,
        });
    final resquest = DioBaseResponse(
        statusCode: response.statusCode,
        message: response.message,
        data: response.data);

    if (response.statusCode.toString().startsWith('2')) {
      return TokenBalanceEntity.fromJson(resquest.data);
    } else if (response.statusCode.toString().startsWith('4')) {
      throw NotFoundException(response.message);
    } else {
      throw ErrorException(message: response.message);
    }
  }

  @override
  Future<String> getEthBalance({required String userAddress}) async {
    // Get Etherium Balance

    final response =
        await apiConsumer.post(url: EndpointManager.getEthBalance, data: {
      "method": "eth_getBalance",
      "params": [userAddress, "latest"],
      // "id": 1,
    });

    print("${response.data} HEYYYYYYY");

    if (response.statusCode.toString().startsWith('2')) {
      return response.data["result"];
    } else if (response.statusCode.toString().startsWith('4')) {
      throw NotFoundException(response.message);
    } else {
      throw ErrorException(message: response.message);
    }
  }

  @override
  Future<SwapDetailsQuote> getSwapQuote(
      {required String sellToken,
      required String buyToken,
      required String amount}) async {
    final oxApiKey = dotenv.env['OxAPIKEY']!;

    log(EndpointManager.getSwapQuote);
    log(oxApiKey);

    final response =
        await apiConsumer.get(url: EndpointManager.getSwapQuote, params: {
      "sellToken": sellToken,
      "buyToken": buyToken,
      "sellAmount": amount,
    }, headers: {
      "0x-api-key": oxApiKey,
    });

    if (response.statusCode.toString().startsWith('2')) {
      return SwapDetailsQuote.fromJson(response.data);
    } else if (response.statusCode.toString().startsWith('4')) {
      throw NotFoundException(response.message);
    } else {
      throw ErrorException(message: response.message);
    }
  }
}
