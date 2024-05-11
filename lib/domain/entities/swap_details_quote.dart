import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

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
        required List<Source> sources,
        @Default("") allowanceTarget,
        @Default("") sellTokenToEthRate,
        @Default("") buyTokenToEthRate,
        @Default("") to,
        @Default("") data,
        @Default("") decodedUniqueId,
        @Default("") guaranteedPrice,
        required List<Order> orders,
        required Fees fees,
        required AuxiliaryChainData auxiliaryChainData,
    }) = _SwapDetailsQuote;

    factory SwapDetailsQuote.fromJson(Map<String, dynamic> json) => _$SwapDetailsQuoteFromJson(json);
}

@freezed
class AuxiliaryChainData with _$AuxiliaryChainData {
    const factory AuxiliaryChainData() = _AuxiliaryChainData;

    factory AuxiliaryChainData.fromJson(Map<String, dynamic> json) => _$AuxiliaryChainDataFromJson(json);
}

@freezed
class Fees with _$Fees {
    const factory Fees({
        required ZeroExFee zeroExFee,
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

    factory ZeroExFee.fromJson(Map<String, dynamic> json) => _$ZeroExFeeFromJson(json);
}

@freezed
class Order with _$Order {
    const factory Order({
        @Default(0) type,
        @Default("") source,
        @Default("") makerToken,
        @Default("") takerToken,
        @Default("") makerAmount,
        @Default("") takerAmount,
        required FillData fillData,
        required Fill fill,
    }) = _Order;

    factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class Fill with _$Fill {
    const factory Fill({
        @Default("") input,
        @Default("") output,
        @Default("") adjustedOutput,
        @Default(0) gas,
    }) = _Fill;

    factory Fill.fromJson(Map<String, dynamic> json) => _$FillFromJson(json);
}

@freezed
class FillData with _$FillData {
    const factory FillData({
        required List<String> tokenAddressPath,
        @Default("") router,
    }) = _FillData;

    factory FillData.fromJson(Map<String, dynamic> json) => _$FillDataFromJson(json);
}

@freezed
class Source with _$Source {
    const factory Source({
        @Default("") name,
        @Default("") proportion,
    }) = _Source;

    factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
