import 'package:exchange_mobile/core/injector/injector.dart';
import 'package:exchange_mobile/domain/repositories/repositories.dart';
import 'package:exchange_mobile/presentation/notifier/states/swap_quote_state.dart';
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

  static String oxUrl = dotenv.env['OxAPI_URL']!;

  Future<void> swapQuotes({required String amount}) async {
    state = const SwapQuoteState.loading();

    final result = await _repository.getSwapQuote(
        sellToken: "0xdAC17F958D2ee523a2206206994597C13D831ec7",
        buyToken: "0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2",
        amount: amount.toString());

    result.fold((failure) {
      state = SwapQuoteState.error(failure.toString());
    }, (data) {
      state = SwapQuoteState.success(data);
    });
  }
}
