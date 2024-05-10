// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swap_details_quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SwapDetailsQuoteImpl _$$SwapDetailsQuoteImplFromJson(
        Map<String, dynamic> json) =>
    _$SwapDetailsQuoteImpl(
      chainId: json['chainId'] ?? 0,
      price: json['price'] ?? 0.0,
      grossPrice: json['grossPrice'] ?? 0.0,
      value: json['value'] ?? "",
      gasPrice: json['gasPrice'] ?? 0,
      gas: json['gas'] ?? 0,
      buyTokenAddress: json['buyTokenAddress'] ?? "",
      buyAmount: json['buyAmount'] ?? 0,
      sellTokenAddress: json['sellTokenAddress'] ?? "",
      sellAmount: json['sellAmount'] ?? "",
      sources:
          (json['sources'] as List<dynamic>?)?.map((e) => e as String).toList(),
      to: json['to'] ?? "",
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Orders.fromJson(e as Map<String, dynamic>))
          .toList(),
      fees: json['fees'] == null
          ? null
          : Fees.fromJson(json['fees'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SwapDetailsQuoteImplToJson(
        _$SwapDetailsQuoteImpl instance) =>
    <String, dynamic>{
      'chainId': instance.chainId,
      'price': instance.price,
      'grossPrice': instance.grossPrice,
      'value': instance.value,
      'gasPrice': instance.gasPrice,
      'gas': instance.gas,
      'buyTokenAddress': instance.buyTokenAddress,
      'buyAmount': instance.buyAmount,
      'sellTokenAddress': instance.sellTokenAddress,
      'sellAmount': instance.sellAmount,
      'sources': instance.sources,
      'to': instance.to,
      'orders': instance.orders,
      'fees': instance.fees,
    };

_$OrdersImpl _$$OrdersImplFromJson(Map<String, dynamic> json) => _$OrdersImpl(
      type: json['type'] ?? 0,
      source: json['source'] ?? "",
      makerToken: json['makerToken'] ?? "",
      takerToken: json['takerToken'] ?? "",
      makerAmount: json['makerAmount'] ?? "",
      takerAmount: json['takerAmount'] ?? "",
      fillData: json['fillData'] == null
          ? null
          : FillData.fromJson(json['fillData'] as Map<String, dynamic>),
      fill: json['fill'] == null
          ? null
          : Fill.fromJson(json['fill'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrdersImplToJson(_$OrdersImpl instance) =>
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

_$FillDataImpl _$$FillDataImplFromJson(Map<String, dynamic> json) =>
    _$FillDataImpl(
      router: json['router'] ?? "",
      path: json['path'] ?? "",
      gasUsed: json['gasUsed'] ?? 0,
      routerVersion: json['routerVersion'] ?? 0,
    );

Map<String, dynamic> _$$FillDataImplToJson(_$FillDataImpl instance) =>
    <String, dynamic>{
      'router': instance.router,
      'path': instance.path,
      'gasUsed': instance.gasUsed,
      'routerVersion': instance.routerVersion,
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
