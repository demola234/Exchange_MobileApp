// import 'dart:convert';

// import 'package:bip32/bip32.dart' as bip32;
// import 'package:bip39/bip39.dart' as bip39;
// import 'package:exchange_mobile/router.dart';
// import 'package:flutter/services.dart';
// import 'package:hex/hex.dart';
// import 'package:http/http.dart';
// import 'package:web3dart/web3dart.dart';

// class Ethereum {
//   static Future<String> generateAccount() async {
//     // Generate a random mnemonic (12 words)
//     String mnemonic = bip39.generateMnemonic();

//     final seed = bip39.mnemonicToSeed(mnemonic);
//     print('Mnemonic: $mnemonic');

//     // Derive the Ethereum address from the mnemonic
//     final node = bip32.BIP32.fromSeed(seed);
//     final child = node.derivePath("m/44'/60'/0'/0/0");
//     final String privateKey = HEX.encode(child.privateKey!); // Your Private Key

//     EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
//     EthereumAddress address = credentials.address; // Your Address Object
//     String publicAddress = address.hex;

//     print('Private Key: $privateKey');
//     print('Address: $publicAddress');

//     return publicAddress;
//   }

//   static Future<String> getAccountFromMnemonic(String mnemonic) async {
//     // Derive the Ethereum address from the mnemonic
//     final node = bip32.BIP32.fromSeed(bip39.mnemonicToSeed(mnemonic));
//     final child = node.derivePath("m/44'/60'/0'/0/0");
//     final String privateKey = HEX.encode(child.privateKey!); // Your Private Key

//     EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
//     EthereumAddress address = credentials.address; // Your Address Object
//     String publicAddress = address.hex;

//     print('Private Key: $privateKey');
//     print('Address: $publicAddress');

//     return publicAddress;
//   }

//   // Get Ethereum Balance
//   static Future<String> getBalance(String address) async {
//     final client = Web3Client(
//         'https://mainnet.infura.io/v3/45f953ae25704f51bfadf8bb0b4290b0',
//         Client());
//     EtherAmount balance =
//         await client.getBalance(EthereumAddress.fromHex(address));
//     return balance.getInWei.toString();
//   }

//   static Future<String> getGas(String address) async {
//     final client = Web3Client(
//         'https://mainnet.infura.io/v3/45f953ae25704f51bfadf8bb0b4290b0',
//         Client());

//     BigInt gas = await client.estimateGas(
//       sender: EthereumAddress.fromHex(address),
//       to: EthereumAddress.fromHex("0x85FD4d0D9aEE19B1ffb173b59bc47436eDb9C8D2"),
//     );
//     print(gas); // How much gas used for the transaction

// // Gas Price
//     EtherAmount gasPrice = await client.getGasPrice();
//     print(gasPrice); // Current price of gas

// // Calculating the gas Fee (gas * gasPrice)
//     EtherAmount estimatedGasFee = EtherAmount.inWei(
//       gas * BigInt.from(gasPrice.getValueInUnit(EtherUnit.wei)),
//     );

//     print(estimatedGasFee); // Gas fee needed for your transaction
//     return estimatedGasFee.getInEther.toString();
//   }

//   static Future<DeployedContract> loadContract() async {
//     final abiString = await rootBundle.loadString("assets/SingleSwap.json");

//     var jsonABI = jsonDecode(abiString);

//     final ContractAbi abi =
//         ContractAbi.fromJson(jsonEncode(jsonABI['abi']), 'SingleSwap');
//     print(abiString);

//     String contractAddress = "0x9fD0BC20dfbCBcd245b60eCC6395b2Eb75b88B37";
//     final contracts = DeployedContract(
//       abi,
//       EthereumAddress.fromHex(contractAddress),
//     );
//     print(contracts.abi.events);
//     return contracts;
//   }

//   Future<BigInt> getAmountsOut(
//       {String rpc =
//           'https://api.bitstack.com/v1/wNFxbiJyQsSeLrX8RRCHi7NpRxrlErZk/DjShIqLishPCTB9HiMkPHXjUM9CNM9Na/ETH/mainnet',
//       String router = '0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D',
//       String token = '0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984',
//       String tokenOut = '0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2',
//       num val = 1}) async {
//     final httpClient = Client();
//     final ethClient = Web3Client(rpc, httpClient);
//     final contract = DeployedContract(
//         ContractAbi.fromJson(abiR, 'Router'), EthereumAddress.fromHex(router));
//     final result = await ethClient.call(
//         contract: contract,
//         function: contract.function('getAmountsOut'),
//         params: [
//           (BigInt.from(val) * BigInt.from(10).pow(18)),
//           [EthereumAddress.fromHex(token), EthereumAddress.fromHex(tokenOut)]
//         ]);
//     if (result.isNotEmpty && result[0].length > 1) {
//       final etherValueBigInt = result[0][1];
//       print('The price in bigint is: $etherValueBigInt');
//       return etherValueBigInt;
//     } else {
//       throw Exception('Error: insufficient data to calculate the price');
//     }
//   }

//   BigInt convertToBigInt(num value) {
//     if (value is int) {
//       return BigInt.from(value) * BigInt.from(10).pow(18);
//     } else if (value is double) {
//       BigInt pres = BigInt.from(10).pow(18);
//       return BigInt.from((value * pres.toInt()));
//     } else {
//       throw ArgumentError('Value must be an int or a double');
//     }
//   }

// //Future<String> swapETHForExactTokens() async {}

//   Future<String> swapExactETHForTokens(String credentials, num tokenAmount,
//       String tokenOut, String recipient, int timestamp) async {
//     try {
//       const String rpc =
//           'https://eth-sepolia.g.alchemy.com/v2/6AqaTeaBzlcW0v5UJqhHXB29-XUxxeVH';
//       const String eth = '0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2';
//       final amountOutMin = convertToBigInt(tokenAmount);
//       final List path = [
//         EthereumAddress.fromHex(eth),
//         EthereumAddress.fromHex(tokenOut)
//       ];
//       final EthereumAddress to = EthereumAddress.fromHex(recipient);
//       final BigInt deadline = BigInt.from(timestamp);
//       final Web3Client provider = Web3Client(rpc, Client());
//       final EthereumAddress routerAddress =
//           EthereumAddress.fromHex('0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D');
//       final ContractAbi routerAbi = ContractAbi.fromJson(abi, 'Router');
//       final DeployedContract routerContract =
//           DeployedContract(routerAbi, routerAddress);
//       final function = routerContract.function('swapExactETHForTokens');
//       final BigInt payableAmount =
//           await getAmountsOut(token: tokenOut, val: tokenAmount);
//       print('Running: swapExactETHForTokens');
//       final result = await provider.sendTransaction(
//         EthPrivateKey.fromHex(credentials),
//         Transaction.callContract(
//           contract: routerContract,
//           function: function,
//           parameters: [
//             amountOutMin,
//             path,
//             to,
//             deadline,
//           ],
//           value: EtherAmount.inWei(payableAmount),
//         ),
//         chainId: 1,
//       );
//       print('Success: swapExactETHForTokens');
//       return result;
//     } catch (err) {
//       print(err);
//       throw Exception(err);
//     }
//   }
// }
