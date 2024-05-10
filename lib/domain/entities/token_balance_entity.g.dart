// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_balance_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenBalanceEntityImpl _$$TokenBalanceEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenBalanceEntityImpl(
      cursor: json['cursor'] ?? "",
      page: json['page'] ?? 0,
      pageSize: json['pageSize'] ?? 0,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TokenBalanceEntityImplToJson(
        _$TokenBalanceEntityImpl instance) =>
    <String, dynamic>{
      'cursor': instance.cursor,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      tokenAddress: json['tokenAddress'] ?? "",
      symbol: json['symbol'] ?? "",
      name: json['name'] ?? "",
      logo: json['logo'] ?? "",
      thumbnail: json['thumbnail'] ?? "",
      decimals: json['decimals'] ?? 0,
      balance: json['balance'] ?? "",
      possibleSpam: json['possibleSpam'] ?? false,
      verifiedContract: json['verifiedContract'] ?? false,
      balanceFormatted: json['balanceFormatted'] ?? "",
      usdPrice: json['usdPrice'] ?? 0.0,
      usdPrice24hrPercentChange: json['usdPrice24hrPercentChange'] ?? 0.0,
      usdPrice24hrUsdChange: json['usdPrice24hrUsdChange'] ?? 0.0,
      usdValue: json['usdValue'] ?? 0,
      usdValue24hrUsdChange: json['usdValue24hrUsdChange'] ?? 0,
      totalSupply: json['totalSupply'] ?? "",
      totalSupplyFormatted: json['totalSupplyFormatted'] ?? "",
      percentageRelativeToTotalSupply:
          json['percentageRelativeToTotalSupply'] ?? "",
      nativeToken: json['nativeToken'] ?? false,
      portfolioPercentage: json['portfolioPercentage'] ?? 0,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'tokenAddress': instance.tokenAddress,
      'symbol': instance.symbol,
      'name': instance.name,
      'logo': instance.logo,
      'thumbnail': instance.thumbnail,
      'decimals': instance.decimals,
      'balance': instance.balance,
      'possibleSpam': instance.possibleSpam,
      'verifiedContract': instance.verifiedContract,
      'balanceFormatted': instance.balanceFormatted,
      'usdPrice': instance.usdPrice,
      'usdPrice24hrPercentChange': instance.usdPrice24hrPercentChange,
      'usdPrice24hrUsdChange': instance.usdPrice24hrUsdChange,
      'usdValue': instance.usdValue,
      'usdValue24hrUsdChange': instance.usdValue24hrUsdChange,
      'totalSupply': instance.totalSupply,
      'totalSupplyFormatted': instance.totalSupplyFormatted,
      'percentageRelativeToTotalSupply':
          instance.percentageRelativeToTotalSupply,
      'nativeToken': instance.nativeToken,
      'portfolioPercentage': instance.portfolioPercentage,
    };
