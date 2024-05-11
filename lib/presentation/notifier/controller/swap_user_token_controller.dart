import 'package:exchange_mobile/core/components/overlay_loader.dart';
import 'package:exchange_mobile/core/injector/injector.dart';
import 'package:exchange_mobile/core/security/security.dart';
import 'package:exchange_mobile/domain/repositories/repositories.dart';
import 'package:exchange_mobile/presentation/notifier/controller/swap_quote_controller.dart';
import 'package:exchange_mobile/presentation/notifier/states/swap_user_token.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

Repository repository = sl<Repository>();
final swapUserTokenControllerProvider =
    StateNotifierProvider<SwapQuoteController, SwapUserToken>((ref) {
  return SwapQuoteController(repository, ref);
});

class SwapQuoteController extends StateNotifier<SwapUserToken> {
  Ref ref;
  SwapQuoteController(
    this._repository,
    this.ref,
  ) : super(const SwapUserToken.initial());

  final Repository _repository;

  Future<void> swapTokens({required BuildContext context}) async {
    context.showOverlay();
    final etherResult = await sl<SecureStorage>().getWalletDetails();

    final result = await _repository.swapToken(
      amount: BigInt.parse(ref
          .read(swapQuoteControllerProvider.notifier)
          .buyExchangeController
          .text),
      userAddress: etherResult!.publicKey ?? "",
    );

    result.fold((failure) {
      Fluttertoast.showToast(
          msg: failure.message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      context.hide();
      state = SwapUserToken.error(failure.toString());
    }, (data) {
      context.hide();
      state = SwapUserToken.success(data);
    });
  }
}
