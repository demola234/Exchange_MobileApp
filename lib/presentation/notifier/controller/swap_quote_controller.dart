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

  Future<void> swapQuotes(
      {required String amount,
      required String sellToken,
      required String buyToken}) async {
    if (sellExchangeController.text.isEmpty) {
      buyExchangeController.clear();
    }
    state = const SwapQuoteState.loading();

    final result = await _repository.getSwapQuote(
        sellToken: sellToken, buyToken: buyToken, amount: amount.toString());

    result.fold((failure) {
      buyExchangeController.clear();
      state = SwapQuoteState.error(failure.toString());
    }, (data) {
      buyExchangeController.text = data.buyAmount.toString();
      state = SwapQuoteState.success(data);
    });
  }
}
