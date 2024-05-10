
import 'package:exchange_mobile/domain/entities/swap_details_quote.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'swap_quote_state.freezed.dart';

@freezed
abstract class SwapQuoteState with _$SwapQuoteState {
  const factory SwapQuoteState.initial() = Initial;
  const factory SwapQuoteState.loading() = Loading;
  const factory SwapQuoteState.success(SwapDetailsQuote token) = Success;
  const factory SwapQuoteState.error(String errorMessage) = Error;
}