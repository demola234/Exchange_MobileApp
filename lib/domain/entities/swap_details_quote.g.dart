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
      sources: (json['sources'] as List<dynamic>)
          .map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
      allowanceTarget: json['allowanceTarget'] ?? "",
      sellTokenToEthRate: json['sellTokenToEthRate'] ?? "",
      buyTokenToEthRate: json['buyTokenToEthRate'] ?? "",
      to: json['to'] ?? "",
      data: json['data'] ?? "",
      decodedUniqueId: json['decodedUniqueId'] ?? "",
      guaranteedPrice: json['guaranteedPrice'] ?? "",
      orders: (json['orders'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      fees: Fees.fromJson(json['fees'] as Map<String, dynamic>),
      auxiliaryChainData: AuxiliaryChainData.fromJson(
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
      'to': instance.to,
      'data': instance.data,
      'decodedUniqueId': instance.decodedUniqueId,
      'guaranteedPrice': instance.guaranteedPrice,
      'orders': instance.orders,
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
      zeroExFee: ZeroExFee.fromJson(json['zeroExFee'] as Map<String, dynamic>),
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

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      type: json['type'] ?? 0,
      source: json['source'] ?? "",
      makerToken: json['makerToken'] ?? "",
      takerToken: json['takerToken'] ?? "",
      makerAmount: json['makerAmount'] ?? "",
      takerAmount: json['takerAmount'] ?? "",
      fillData: FillData.fromJson(json['fillData'] as Map<String, dynamic>),
      fill: Fill.fromJson(json['fill'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'source': instance.source,
      'makerToken': instance.makerToken,
      'takerToken': instance.takerToken,
      'makerAmount': instance.makerAmount,
      'takerAmount': instance.takerAmount,
      'fillData': instance.fillData,
      'fill': instance.fill,
    };

_$FillImpl _$$FillImplFromJson(Map<String, dynamic> json) => _$FillImpl(
      input: json['input'] ?? "",
      output: json['output'] ?? "",
      adjustedOutput: json['adjustedOutput'] ?? "",
      gas: json['gas'] ?? 0,
    );

Map<String, dynamic> _$$FillImplToJson(_$FillImpl instance) =>
    <String, dynamic>{
      'input': instance.input,
      'output': instance.output,
      'adjustedOutput': instance.adjustedOutput,
      'gas': instance.gas,
    };

_$FillDataImpl _$$FillDataImplFromJson(Map<String, dynamic> json) =>
    _$FillDataImpl(
      tokenAddressPath: (json['tokenAddressPath'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      router: json['router'] ?? "",
    );

Map<String, dynamic> _$$FillDataImplToJson(_$FillDataImpl instance) =>
    <String, dynamic>{
      'tokenAddressPath': instance.tokenAddressPath,
      'router': instance.router,
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
