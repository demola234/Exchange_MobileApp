import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_balance_entity.freezed.dart';
part 'token_balance_entity.g.dart';

@freezed
class TokenBalanceEntity with _$TokenBalanceEntity {
  const factory TokenBalanceEntity({
    @Default("") cursor,
    @Default(0) page,
    @Default(0) pageSize,
    List<Result>? result,
  }) = _TokenBalanceEntity;

  factory TokenBalanceEntity.fromJson(Map<String, Object?> json) =>
      _$TokenBalanceEntityFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @Default("") tokenAddress,
    @Default("") symbol,
    @Default("") name,
    @Default("") logo,
    @Default("") thumbnail,
    @Default(0) decimals,
    @Default("") balance,
   @Default(false) possibleSpam,
   @Default(false) verifiedContract,
    @Default("") balanceFormatted,
    @Default(0.0) usdPrice,
    @Default(0.0) usdPrice24hrPercentChange,
    @Default(0.0) usdPrice24hrUsdChange,
    @Default(0) usdValue,
    @Default(0) usdValue24hrUsdChange,
    @Default("") totalSupply,
    @Default("") totalSupplyFormatted,
    @Default("") percentageRelativeToTotalSupply,
   @Default(false) nativeToken,
    @Default(0) portfolioPercentage,
  }) = _Result;

  factory Result.fromJson(Map<String, Object?> json) => _$ResultFromJson(json);
}
