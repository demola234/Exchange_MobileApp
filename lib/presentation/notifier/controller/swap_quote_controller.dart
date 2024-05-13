import 'dart:async';
import 'dart:math';

import 'package:exchange_mobile/core/extensions/money_formatter.dart';
import 'package:exchange_mobile/core/injector/injector.dart';
import 'package:exchange_mobile/domain/repositories/repositories.dart';
import 'package:exchange_mobile/presentation/notifier/states/swap_quote_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

Repository repository = sl<Repository>();
final swapQuoteControllerProvider =
    StateNotifierProvider<SwapQuoteController, SwapQuoteState>((ref) {
  return SwapQuoteController(repository, ref);
});

class SwapQuoteController extends StateNotifier<SwapQuoteState> {
  SwapQuoteController(
    this._repository,
    this._ref,
  ) : super(const SwapQuoteState.initial());

  final Repository _repository;
  final Ref _ref;
  TextEditingController buyExchangeController = TextEditingController();

  TextEditingController sellExchangeController = TextEditingController();
  static String oxUrl = dotenv.env['OxAPI_URL']!;

  Timer? _debounceTimer;

  Future<void> swapQuotes(
      {required String amount,
      required String sellToken,
      required String buyToken}) async {
    if (sellExchangeController.text.isEmpty) {
      buyExchangeController.clear();
    }

    if (_debounceTimer != null) {
      _debounceTimer!.cancel();
    }
    _debounceTimer = Timer(const Duration(milliseconds: 1000), () async {
      state = const SwapQuoteState.loading();

      // Implement the debounce for API call
      final result = await _repository.getSwapQuote(
          sellToken: buyToken,
          buyToken: sellToken,
          amount: (int.parse(amount) * pow(10, 6)).toString());

      result.fold((failure) {
        Fluttertoast.showToast(
            msg: failure.message,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        buyExchangeController.clear();
        state = SwapQuoteState.error(failure.toString());
      }, (data) {
        buyExchangeController.text = (double.parse(data.sellTokenToEthRate) *
                double.parse(sellExchangeController.text))
            .toString()
            .formatCurrency();
        state = SwapQuoteState.success(data);
      });
    });
  }

  // Swap Token
}
