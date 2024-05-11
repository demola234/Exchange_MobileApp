import 'package:exchange_mobile/data/infastructure/swap_tokens.dart';
import 'package:exchange_mobile/presentation/notifier/states/token_swap_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TokenSwapController extends StateNotifier<TokenSwapState> {
  TokenSwapController() : super(TokenSwapState.loading(tokens.first.tokens!)) {
    getCurrentPositions();
  }

  // Swap token positions
  swapTokens() {
    final temp = tokens.first.tokens!.first;
    tokens.first.tokens!.first = tokens.first.tokens!.last;
    tokens.first.tokens!.last = temp;

    state = TokenSwapState.success(tokens.first.tokens!);
  }

  getCurrentPositions() {
    // Call API or access database to get current positions
    state = TokenSwapState.loading(tokens.first.tokens!);
  }
}

final swapTokensProvider =
    StateNotifierProvider<TokenSwapController, TokenSwapState>((ref) {
  return TokenSwapController();
});