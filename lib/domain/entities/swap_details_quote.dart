import 'package:freezed_annotation/freezed_annotation.dart';

part 'swap_details_quote.freezed.dart';
part 'swap_details_quote.g.dart';

@freezed
class SwapDetailsQuote with _$SwapDetailsQuote {
  const factory SwapDetailsQuote({
    @Default(0) chainId,
    @Default("") price,
    @Default("") grossPrice,
    @Default("") estimatedPriceImpact,
    @Default("") value,
    @Default("") gasPrice,
    @Default("") gas,
    @Default("") estimatedGas,
    @Default("") protocolFee,
    @Default("") minimumProtocolFee,
    @Default("") buyTokenAddress,
    @Default("") buyAmount,
    @Default("") grossBuyAmount,
    @Default("") sellTokenAddress,
    @Default("") sellAmount,
    @Default("") grossSellAmount,
    List<Source>? sources,
    @Default("") allowanceTarget,
    @Default("") sellTokenToEthRate,
    @Default("") buyTokenToEthRate,
    Fees? fees,
    AuxiliaryChainData? auxiliaryChainData,
  }) = _SwapDetailsQuote;

  factory SwapDetailsQuote.fromJson(Map<String, dynamic> json) =>
      _$SwapDetailsQuoteFromJson(json);
}

@freezed
class AuxiliaryChainData with _$AuxiliaryChainData {
  const factory AuxiliaryChainData() = _AuxiliaryChainData;

  factory AuxiliaryChainData.fromJson(Map<String, dynamic> json) =>
      _$AuxiliaryChainDataFromJson(json);
}

@freezed
class Fees with _$Fees {
  const factory Fees({
    ZeroExFee? zeroExFee,
  }) = _Fees;

  factory Fees.fromJson(Map<String, dynamic> json) => _$FeesFromJson(json);
}

@freezed
class ZeroExFee with _$ZeroExFee {
  const factory ZeroExFee({
    @Default("") feeType,
    @Default("") feeToken,
    @Default("") feeAmount,
    @Default("") billingType,
  }) = _ZeroExFee;

  factory ZeroExFee.fromJson(Map<String, dynamic> json) =>
      _$ZeroExFeeFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source({
    @Default("") name,
    @Default("") proportion,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
