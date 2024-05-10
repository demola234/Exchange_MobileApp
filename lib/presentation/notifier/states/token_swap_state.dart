import 'package:exchange_mobile/data/infastructure/swap_tokens.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_swap_state.freezed.dart';

@freezed
abstract class TokenSwapState with _$TokenSwapState {
  const factory TokenSwapState.loading(List<Tokens> token) = Loading;
  const factory TokenSwapState.success(List<Tokens> token) = Success;
  const factory TokenSwapState.error(List<Tokens> token) = Error;
}