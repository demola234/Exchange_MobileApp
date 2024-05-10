import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'swap_details_quote.freezed.dart';
part 'swap_details_quote.g.dart';

@freezed
class SwapDetailsQuote with _$SwapDetailsQuote {
  const factory SwapDetailsQuote({
    @Default(0) chainId,
    @Default(0.0) price,
    @Default(0.0) grossPrice,
    @Default("") value,
    @Default(0) gasPrice,
    @Default(0) gas,
    @Default("") buyTokenAddress,
    @Default(0) buyAmount,
    @Default("") sellTokenAddress,
    @Default("") sellAmount,
    List<String>? sources,
    @Default("") to,
    List<Orders>? orders,
    Fees? fees,
  }) = _SwapDetailsQuote;

  factory SwapDetailsQuote.fromJson(Map<String, Object?> json) =>
      _$SwapDetailsQuoteFromJson(json);
}

@freezed
class Orders with _$Orders {
  const factory Orders({
    @Default(0) type,
    @Default("") source,
    @Default("") makerToken,
    @Default("") takerToken,
    @Default("") makerAmount,
    @Default("") takerAmount,
    FillData? fillData,
    Fill? fill,
  }) = _Orders;

  factory Orders.fromJson(Map<String, Object?> json) => _$OrdersFromJson(json);
}

@freezed
class FillData with _$FillData {
  const factory FillData({
    @Default("") router,
    @Default("") path,
    @Default(0) gasUsed,
    @Default(0) routerVersion,
  }) = _FillData;

  factory FillData.fromJson(Map<String, Object?> json) =>
      _$FillDataFromJson(json);
}

@freezed
class Fill with _$Fill {
  const factory Fill({
    @Default("") input,
    @Default("") output,
    @Default("") adjustedOutput,
    @Default(0) gas,
  }) = _Fill;

  factory Fill.fromJson(Map<String, Object?> json) => _$FillFromJson(json);
}

@freezed
class Fees with _$Fees {
  const factory Fees({
    ZeroExFee? zeroExFee,
  }) = _Fees;

  factory Fees.fromJson(Map<String, Object?> json) => _$FeesFromJson(json);
}

@freezed
class ZeroExFee with _$ZeroExFee {
  const factory ZeroExFee({
    @Default("") feeType,
    @Default("") feeToken,
    @Default("") feeAmount,
    @Default("") billingType,
  }) = _ZeroExFee;

  factory ZeroExFee.fromJson(Map<String, Object?> json) =>
      _$ZeroExFeeFromJson(json);
}
