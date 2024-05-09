import 'package:exchange_mobile/domain/entities/generated_wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_state.freezed.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.initial() = _Initial;
  const factory WalletState.generatingSeedPhrase() = _Loading;
  const factory WalletState.generatedSeedPhrase({required GeneratedWallet generatedWallet}) = _GeneratedWallet;
  const factory WalletState.error({required String error}) = _Error;
}
