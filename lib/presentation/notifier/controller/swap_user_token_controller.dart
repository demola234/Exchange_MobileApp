import 'package:exchange_mobile/core/components/overlay_loader.dart';
import 'package:exchange_mobile/core/injector/injector.dart';
import 'package:exchange_mobile/core/security/security.dart';
import 'package:exchange_mobile/domain/repositories/repositories.dart';
import 'package:exchange_mobile/presentation/notifier/states/swap_user_token.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Repository repository = sl<Repository>();
final swapUserTokenControllerProvider =
    StateNotifierProvider<SwapQuoteController, SwapUserToken>((ref) {
  return SwapQuoteController(repository);
});

class SwapQuoteController extends StateNotifier<SwapUserToken> {
  SwapQuoteController(
    this._repository,
  ) : super(const SwapUserToken.initial());

  final Repository _repository;

  Future<void> swapTokens(
      {required String amount, required BuildContext context}) async {
    context.showOverlay();
    final etherResult = await sl<SecureStorage>().getWalletDetails();
    final result = await _repository.swapToken(
      amount: BigInt.parse(amount),
      userAddress: etherResult!.publicKey ?? "",
    );

    result.fold((failure) {
      context.hide();
      state = SwapUserToken.error(failure.toString());
    }, (data) {
      context.hide();
      state = SwapUserToken.success(data);
    });
  }
}
