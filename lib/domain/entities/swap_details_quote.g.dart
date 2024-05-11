// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swap_details_quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SwapDetailsQuoteImpl _$$SwapDetailsQuoteImplFromJson(
        Map<String, dynamic> json) =>
    _$SwapDetailsQuoteImpl(
      chainId: json['chainId'] ?? 0,
      price: json['price'] ?? "",
      grossPrice: json['grossPrice'] ?? "",
      estimatedPriceImpact: json['estimatedPriceImpact'] ?? "",
      value: json['value'] ?? "",
      gasPrice: json['gasPrice'] ?? "",
      gas: json['gas'] ?? "",
      estimatedGas: json['estimatedGas'] ?? "",
      protocolFee: json['protocolFee'] ?? "",
      minimumProtocolFee: json['minimumProtocolFee'] ?? "",
      buyTokenAddress: json['buyTokenAddress'] ?? "",
      buyAmount: json['buyAmount'] ?? "",
      grossBuyAmount: json['grossBuyAmount'] ?? "",
      sellTokenAddress: json['sellTokenAddress'] ?? "",
      sellAmount: json['sellAmount'] ?? "",
      grossSellAmount: json['grossSellAmount'] ?? "",
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
      allowanceTarget: json['allowanceTarget'] ?? "",
      sellTokenToEthRate: json['sellTokenToEthRate'] ?? "",
      buyTokenToEthRate: json['buyTokenToEthRate'] ?? "",
      fees: json['fees'] == null
          ? null
          : Fees.fromJson(json['fees'] as Map<String, dynamic>),
      auxiliaryChainData: json['auxiliaryChainData'] == null
          ? null
          : AuxiliaryChainData.fromJson(
              json['auxiliaryChainData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SwapDetailsQuoteImplToJson(
        _$SwapDetailsQuoteImpl instance) =>
    <String, dynamic>{
      'chainId': instance.chainId,
      'price': instance.price,
      'grossPrice': instance.grossPrice,
      'estimatedPriceImpact': instance.estimatedPriceImpact,
      'value': instance.value,
      'gasPrice': instance.gasPrice,
      'gas': instance.gas,
      'estimatedGas': instance.estimatedGas,
      'protocolFee': instance.protocolFee,
      'minimumProtocolFee': instance.minimumProtocolFee,
      'buyTokenAddress': instance.buyTokenAddress,
      'buyAmount': instance.buyAmount,
      'grossBuyAmount': instance.grossBuyAmount,
      'sellTokenAddress': instance.sellTokenAddress,
      'sellAmount': instance.sellAmount,
      'grossSellAmount': instance.grossSellAmount,
      'sources': instance.sources,
      'allowanceTarget': instance.allowanceTarget,
      'sellTokenToEthRate': instance.sellTokenToEthRate,
      'buyTokenToEthRate': instance.buyTokenToEthRate,
      'fees': instance.fees,
      'auxiliaryChainData': instance.auxiliaryChainData,
    };

_$AuxiliaryChainDataImpl _$$AuxiliaryChainDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AuxiliaryChainDataImpl();

Map<String, dynamic> _$$AuxiliaryChainDataImplToJson(
        _$AuxiliaryChainDataImpl instance) =>
    <String, dynamic>{};

_$FeesImpl _$$FeesImplFromJson(Map<String, dynamic> json) => _$FeesImpl(
      zeroExFee: json['zeroExFee'] == null
          ? null
          : ZeroExFee.fromJson(json['zeroExFee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeesImplToJson(_$FeesImpl instance) =>
    <String, dynamic>{
      'zeroExFee': instance.zeroExFee,
    };

_$ZeroExFeeImpl _$$ZeroExFeeImplFromJson(Map<String, dynamic> json) =>
    _$ZeroExFeeImpl(
      feeType: json['feeType'] ?? "",
      feeToken: json['feeToken'] ?? "",
      feeAmount: json['feeAmount'] ?? "",
      billingType: json['billingType'] ?? "",
    );

Map<String, dynamic> _$$ZeroExFeeImplToJson(_$ZeroExFeeImpl instance) =>
    <String, dynamic>{
      'feeType': instance.feeType,
      'feeToken': instance.feeToken,
      'feeAmount': instance.feeAmount,
      'billingType': instance.billingType,
    };

_$SourceImpl _$$SourceImplFromJson(Map<String, dynamic> json) => _$SourceImpl(
      name: json['name'] ?? "",
      proportion: json['proportion'] ?? "",
    );

Map<String, dynamic> _$$SourceImplToJson(_$SourceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'proportion': instance.proportion,
    };
