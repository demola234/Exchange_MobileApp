import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:web3dart/web3dart.dart';

abstract class SwapContractCalls {
  Future<bool> swapExactInputSingle(
      {required BigInt amount, required String usersAddress});
}

class ISwapContractCalls implements SwapContractCalls {
  static String contractAddress = dotenv.env['CONTRACT_ADDRESS']!;
  static String rpcUrl = dotenv.env['MAINNET_RPC_URL']!;

  static Future<DeployedContract> loadContract() async {
    final abiString = await rootBundle.loadString("assets/abi/SingleSwap.json");

    var jsonABI = jsonDecode(abiString);

    final ContractAbi abi =
        ContractAbi.fromJson(jsonEncode(jsonABI['abi']), 'SingleSwap');

    final contracts = DeployedContract(
      abi,
      EthereumAddress.fromHex(contractAddress),
    );

    return contracts;
  }

  @override
  Future<bool> swapExactInputSingle(
      {required BigInt amount, required String usersAddress}) async {
    try {
      final contract = await loadContract();

      final client = Web3Client(rpcUrl, http.Client());

      await client.call(
        contract: contract,
        function: contract.function('swapExactInputSingle'),
        sender: EthereumAddress.fromHex(usersAddress),
        params: [(amount)],
      );
      return true;
    } catch (err) {
      throw Exception(err);
    }
  }
}
