// Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EndpointManager {
  static final EndpointManager _instance = EndpointManager._internal();

  //Factory ConstConstructor, use the factory keyword when you need the ConstConstructor to not create a new object each time.
  factory EndpointManager() => _instance;

  //Internal ConstConstructor
  EndpointManager._internal();
  //! Endpoint Manager base url for the API
  static String moralisUrl = dotenv.env['MORALIS_URL']!;
  static String infuraUrl = dotenv.env['INFURA_URL']!;
  static String infuraApiKey = dotenv.env['INFURA_API_KEY']!;
  static String oxUrl = dotenv.env['OxAPI_URL']!;

  init() async {
    //
  }

  //! Get Token Balance
  static String tokenBalance(String address) =>
      '$moralisUrl/wallets/$address/tokens?chain=eth';
  //! Get ETH Balance
  static String getEthBalance = '$infuraUrl/$infuraApiKey';

  // !! Swap Qoute
  static String getSwapQuote = '$oxUrl/quote';
}

class EndPointConstant {
  static final EndPointConstant _instance = EndPointConstant._internal();

  //Factory Constructor, use the factory keyword when you need the Constructor to not create a new object each time.
  factory EndPointConstant() => _instance;

  //Internal Constructor
  EndPointConstant._internal();

  late Map<String, dynamic> defaultHeader;

  init() async {
    // defaultHeader = _defaultHeader(token: dotenv.env['HEADER_API_KEY']);
  }

  Map<String, dynamic> _defaultHeader({String? token}) =>
      {'AUTH_KEY': token, 'Content-Type': 'application/json'};
}
