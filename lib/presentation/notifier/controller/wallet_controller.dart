import 'package:exchange_mobile/core/components/generated_seed_phrase_component.dart';
import 'package:exchange_mobile/core/components/overlay_loader.dart';
import 'package:exchange_mobile/core/injector/injector.dart';
import 'package:exchange_mobile/domain/repositories/repositories.dart';
import 'package:exchange_mobile/presentation/notifier/states/wallet_state.dart';
import 'package:exchange_mobile/presentation/screens/swap_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WalletNotifierController extends StateNotifier<WalletState> {
  WalletNotifierController(
    this._repository,
  ) : super(const WalletState.initial());

  final Repository _repository;

  Future<void> generatingWallet({
    required BuildContext context,
  }) async {
    context.showOverlay();
    state = const WalletState.generatingSeedPhrase();

    final result = await _repository.generateSeedPhrase();
    result.fold((failure) {
      context.hide();

      state = WalletState.error(error: failure.toString());
    }, (data) {
      context.hide();

      context.generateSeedPhrase(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SwapScreen()));
        },
        mnemonics: data.mnemonics!,
        address: data.publicKey!,
      );

      // context.showToast(
      //   title: user.message,
      //   toastDurationInSeconds: 5,
      //   isSuccess: true,
      // );
      // state = WalletState.signUpSuccess(data: user);
    });
  }

  Future<void> generateAccountFromMnemonics({
    required BuildContext context,
    required String mnemonics,
  }) async {
    context.showOverlay();
    state = const WalletState.generatingSeedPhrase();

    final result =
        await _repository.generateWalletFromSeedPhrase(mnemonic: mnemonics);
    result.fold((failure) {
      context.hide();

      state = WalletState.error(error: failure.toString());
    }, (data) {
      context.hide();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SwapScreen()));

      // context.showToast(
      //   title: user.message,
      //   toastDurationInSeconds: 5,
      //   isSuccess: true,
      // );
      // state = WalletState.signUpSuccess(data: user);
    });
  }
}

Repository repository = sl<Repository>();

final walletNotifierController =
    StateNotifierProvider<WalletNotifierController, WalletState>(
  (ref) => WalletNotifierController(repository),
);
