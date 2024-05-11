import 'dart:async';
import 'dart:math';

import 'package:exchange_mobile/core/extensions/money_formatter.dart';
import 'package:exchange_mobile/core/injector/injector.dart';
import 'package:exchange_mobile/domain/repositories/repositories.dart';
import 'package:exchange_mobile/presentation/notifier/states/swap_quote_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Repository repository = sl<Repository>();
final swapQuoteControllerProvider =
    StateNotifierProvider<SwapQuoteController, SwapQuoteState>((ref) {
  return SwapQuoteController(repository);
});

class SwapQuoteController extends StateNotifier<SwapQuoteState> {
  SwapQuoteController(
    this._repository,
  ) : super(const SwapQuoteState.initial());

  final Repository _repository;
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
          amount: (int.parse(amount) * pow(10, 5)).toString());

      result.fold((failure) {
        buyExchangeController.clear();
        state = SwapQuoteState.error(failure.toString());
      }, (data) {
        buyExchangeController.text = (double.parse(data.sellTokenToEthRate) *
                double.parse(sellExchangeController.text))
            .toString()
            .intValue
            .toString();
        state = SwapQuoteState.success(data);
      });
    });
  }

  // Swap Token 

}
