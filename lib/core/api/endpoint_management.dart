// Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EndpointManager {
  static final EndpointManager _instance = EndpointManager._internal();

  //Factory ConstConstructor, use the factory keyword when you need the ConstConstructor to not create a new object each time.
  factory EndpointManager() => _instance;

  //Internal ConstConstructor
  EndpointManager._internal();
  //! Endpoint Manager base url for the API
  static String baseUrl = dotenv.env['BASE_URL']!;

  init() async {
    //
  }

  //! Authentication
  static String register = '$baseUrl/register';
}

class EndPointConstant {
  static final EndPointConstant _instance = EndPointConstant._internal();

  //Factory Constructor, use the factory keyword when you need the Constructor to not create a new object each time.
  factory EndPointConstant() => _instance;

  //Internal Constructor
  EndPointConstant._internal();

  late String loginUrl, singUpUrl, returnAwbUrl, returnProcurementUrl;

  late Map<String, dynamic> defaultHeader;

  init() async {
    // defaultHeader = _defaultHeader(token: dotenv.env['HEADER_API_KEY']);
  }

  Map<String, dynamic> _defaultHeader({String? token}) =>
      {'AUTH_KEY': token, 'Content-Type': 'application/json'};
}
