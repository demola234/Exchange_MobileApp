// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_balance_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenBalanceEntity _$TokenBalanceEntityFromJson(Map<String, dynamic> json) {
  return _TokenBalanceEntity.fromJson(json);
}

/// @nodoc
mixin _$TokenBalanceEntity {
  dynamic get cursor => throw _privateConstructorUsedError;
  dynamic get page => throw _privateConstructorUsedError;
  dynamic get pageSize => throw _privateConstructorUsedError;
  List<Result>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenBalanceEntityCopyWith<TokenBalanceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenBalanceEntityCopyWith<$Res> {
  factory $TokenBalanceEntityCopyWith(
          TokenBalanceEntity value, $Res Function(TokenBalanceEntity) then) =
      _$TokenBalanceEntityCopyWithImpl<$Res, TokenBalanceEntity>;
  @useResult
  $Res call(
      {dynamic cursor, dynamic page, dynamic pageSize, List<Result>? result});
}

/// @nodoc
class _$TokenBalanceEntityCopyWithImpl<$Res, $Val extends TokenBalanceEntity>
    implements $TokenBalanceEntityCopyWith<$Res> {
  _$TokenBalanceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as dynamic,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenBalanceEntityImplCopyWith<$Res>
    implements $TokenBalanceEntityCopyWith<$Res> {
  factory _$$TokenBalanceEntityImplCopyWith(_$TokenBalanceEntityImpl value,
          $Res Function(_$TokenBalanceEntityImpl) then) =
      __$$TokenBalanceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic cursor, dynamic page, dynamic pageSize, List<Result>? result});
}

/// @nodoc
class __$$TokenBalanceEntityImplCopyWithImpl<$Res>
    extends _$TokenBalanceEntityCopyWithImpl<$Res, _$TokenBalanceEntityImpl>
    implements _$$TokenBalanceEntityImplCopyWith<$Res> {
  __$$TokenBalanceEntityImplCopyWithImpl(_$TokenBalanceEntityImpl _value,
      $Res Function(_$TokenBalanceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? result = freezed,
  }) {
    return _then(_$TokenBalanceEntityImpl(
      cursor: freezed == cursor ? _value.cursor! : cursor,
      page: freezed == page ? _value.page! : page,
      pageSize: freezed == pageSize ? _value.pageSize! : pageSize,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenBalanceEntityImpl implements _TokenBalanceEntity {
  const _$TokenBalanceEntityImpl(
      {this.cursor = "",
      this.page = 0,
      this.pageSize = 0,
      final List<Result>? result})
      : _result = result;

  factory _$TokenBalanceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenBalanceEntityImplFromJson(json);

  @override
  @JsonKey()
  final dynamic cursor;
  @override
  @JsonKey()
  final dynamic page;
  @override
  @JsonKey()
  final dynamic pageSize;
  final List<Result>? _result;
  @override
  List<Result>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TokenBalanceEntity(cursor: $cursor, page: $page, pageSize: $pageSize, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenBalanceEntityImpl &&
            const DeepCollectionEquality().equals(other.cursor, cursor) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cursor),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenBalanceEntityImplCopyWith<_$TokenBalanceEntityImpl> get copyWith =>
      __$$TokenBalanceEntityImplCopyWithImpl<_$TokenBalanceEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenBalanceEntityImplToJson(
      this,
    );
  }
}

abstract class _TokenBalanceEntity implements TokenBalanceEntity {
  const factory _TokenBalanceEntity(
      {final dynamic cursor,
      final dynamic page,
      final dynamic pageSize,
      final List<Result>? result}) = _$TokenBalanceEntityImpl;

  factory _TokenBalanceEntity.fromJson(Map<String, dynamic> json) =
      _$TokenBalanceEntityImpl.fromJson;

  @override
  dynamic get cursor;
  @override
  dynamic get page;
  @override
  dynamic get pageSize;
  @override
  List<Result>? get result;
  @override
  @JsonKey(ignore: true)
  _$$TokenBalanceEntityImplCopyWith<_$TokenBalanceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  dynamic get tokenAddress => throw _privateConstructorUsedError;
  dynamic get symbol => throw _privateConstructorUsedError;
  dynamic get name => throw _privateConstructorUsedError;
  dynamic get logo => throw _privateConstructorUsedError;
  dynamic get thumbnail => throw _privateConstructorUsedError;
  dynamic get decimals => throw _privateConstructorUsedError;
  dynamic get balance => throw _privateConstructorUsedError;
  dynamic get possibleSpam => throw _privateConstructorUsedError;
  dynamic get verifiedContract => throw _privateConstructorUsedError;
  dynamic get balanceFormatted => throw _privateConstructorUsedError;
  dynamic get usdPrice => throw _privateConstructorUsedError;
  dynamic get usdPrice24hrPercentChange => throw _privateConstructorUsedError;
  dynamic get usdPrice24hrUsdChange => throw _privateConstructorUsedError;
  dynamic get usdValue => throw _privateConstructorUsedError;
  dynamic get usdValue24hrUsdChange => throw _privateConstructorUsedError;
  dynamic get totalSupply => throw _privateConstructorUsedError;
  dynamic get totalSupplyFormatted => throw _privateConstructorUsedError;
  dynamic get percentageRelativeToTotalSupply =>
      throw _privateConstructorUsedError;
  dynamic get nativeToken => throw _privateConstructorUsedError;
  dynamic get portfolioPercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {dynamic tokenAddress,
      dynamic symbol,
      dynamic name,
      dynamic logo,
      dynamic thumbnail,
      dynamic decimals,
      dynamic balance,
      dynamic possibleSpam,
      dynamic verifiedContract,
      dynamic balanceFormatted,
      dynamic usdPrice,
      dynamic usdPrice24hrPercentChange,
      dynamic usdPrice24hrUsdChange,
      dynamic usdValue,
      dynamic usdValue24hrUsdChange,
      dynamic totalSupply,
      dynamic totalSupplyFormatted,
      dynamic percentageRelativeToTotalSupply,
      dynamic nativeToken,
      dynamic portfolioPercentage});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenAddress = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? thumbnail = freezed,
    Object? decimals = freezed,
    Object? balance = freezed,
    Object? possibleSpam = freezed,
    Object? verifiedContract = freezed,
    Object? balanceFormatted = freezed,
    Object? usdPrice = freezed,
    Object? usdPrice24hrPercentChange = freezed,
    Object? usdPrice24hrUsdChange = freezed,
    Object? usdValue = freezed,
    Object? usdValue24hrUsdChange = freezed,
    Object? totalSupply = freezed,
    Object? totalSupplyFormatted = freezed,
    Object? percentageRelativeToTotalSupply = freezed,
    Object? nativeToken = freezed,
    Object? portfolioPercentage = freezed,
  }) {
    return _then(_value.copyWith(
      tokenAddress: freezed == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as dynamic,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      decimals: freezed == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as dynamic,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as dynamic,
      possibleSpam: freezed == possibleSpam
          ? _value.possibleSpam
          : possibleSpam // ignore: cast_nullable_to_non_nullable
              as dynamic,
      verifiedContract: freezed == verifiedContract
          ? _value.verifiedContract
          : verifiedContract // ignore: cast_nullable_to_non_nullable
              as dynamic,
      balanceFormatted: freezed == balanceFormatted
          ? _value.balanceFormatted
          : balanceFormatted // ignore: cast_nullable_to_non_nullable
              as dynamic,
      usdPrice: freezed == usdPrice
          ? _value.usdPrice
          : usdPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      usdPrice24hrPercentChange: freezed == usdPrice24hrPercentChange
          ? _value.usdPrice24hrPercentChange
          : usdPrice24hrPercentChange // ignore: cast_nullable_to_non_nullable
              as dynamic,
      usdPrice24hrUsdChange: freezed == usdPrice24hrUsdChange
          ? _value.usdPrice24hrUsdChange
          : usdPrice24hrUsdChange // ignore: cast_nullable_to_non_nullable
              as dynamic,
      usdValue: freezed == usdValue
          ? _value.usdValue
          : usdValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      usdValue24hrUsdChange: freezed == usdValue24hrUsdChange
          ? _value.usdValue24hrUsdChange
          : usdValue24hrUsdChange // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalSupply: freezed == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalSupplyFormatted: freezed == totalSupplyFormatted
          ? _value.totalSupplyFormatted
          : totalSupplyFormatted // ignore: cast_nullable_to_non_nullable
              as dynamic,
      percentageRelativeToTotalSupply: freezed ==
              percentageRelativeToTotalSupply
          ? _value.percentageRelativeToTotalSupply
          : percentageRelativeToTotalSupply // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nativeToken: freezed == nativeToken
          ? _value.nativeToken
          : nativeToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      portfolioPercentage: freezed == portfolioPercentage
          ? _value.portfolioPercentage
          : portfolioPercentage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic tokenAddress,
      dynamic symbol,
      dynamic name,
      dynamic logo,
      dynamic thumbnail,
      dynamic decimals,
      dynamic balance,
      dynamic possibleSpam,
      dynamic verifiedContract,
      dynamic balanceFormatted,
      dynamic usdPrice,
      dynamic usdPrice24hrPercentChange,
      dynamic usdPrice24hrUsdChange,
      dynamic usdValue,
      dynamic usdValue24hrUsdChange,
      dynamic totalSupply,
      dynamic totalSupplyFormatted,
      dynamic percentageRelativeToTotalSupply,
      dynamic nativeToken,
      dynamic portfolioPercentage});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenAddress = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? thumbnail = freezed,
    Object? decimals = freezed,
    Object? balance = freezed,
    Object? possibleSpam = freezed,
    Object? verifiedContract = freezed,
    Object? balanceFormatted = freezed,
    Object? usdPrice = freezed,
    Object? usdPrice24hrPercentChange = freezed,
    Object? usdPrice24hrUsdChange = freezed,
    Object? usdValue = freezed,
    Object? usdValue24hrUsdChange = freezed,
    Object? totalSupply = freezed,
    Object? totalSupplyFormatted = freezed,
    Object? percentageRelativeToTotalSupply = freezed,
    Object? nativeToken = freezed,
    Object? portfolioPercentage = freezed,
  }) {
    return _then(_$ResultImpl(
      tokenAddress:
          freezed == tokenAddress ? _value.tokenAddress! : tokenAddress,
      symbol: freezed == symbol ? _value.symbol! : symbol,
      name: freezed == name ? _value.name! : name,
      logo: freezed == logo ? _value.logo! : logo,
      thumbnail: freezed == thumbnail ? _value.thumbnail! : thumbnail,
      decimals: freezed == decimals ? _value.decimals! : decimals,
      balance: freezed == balance ? _value.balance! : balance,
      possibleSpam:
          freezed == possibleSpam ? _value.possibleSpam! : possibleSpam,
      verifiedContract: freezed == verifiedContract
          ? _value.verifiedContract!
          : verifiedContract,
      balanceFormatted: freezed == balanceFormatted
          ? _value.balanceFormatted!
          : balanceFormatted,
      usdPrice: freezed == usdPrice ? _value.usdPrice! : usdPrice,
      usdPrice24hrPercentChange: freezed == usdPrice24hrPercentChange
          ? _value.usdPrice24hrPercentChange!
          : usdPrice24hrPercentChange,
      usdPrice24hrUsdChange: freezed == usdPrice24hrUsdChange
          ? _value.usdPrice24hrUsdChange!
          : usdPrice24hrUsdChange,
      usdValue: freezed == usdValue ? _value.usdValue! : usdValue,
      usdValue24hrUsdChange: freezed == usdValue24hrUsdChange
          ? _value.usdValue24hrUsdChange!
          : usdValue24hrUsdChange,
      totalSupply: freezed == totalSupply ? _value.totalSupply! : totalSupply,
      totalSupplyFormatted: freezed == totalSupplyFormatted
          ? _value.totalSupplyFormatted!
          : totalSupplyFormatted,
      percentageRelativeToTotalSupply:
          freezed == percentageRelativeToTotalSupply
              ? _value.percentageRelativeToTotalSupply!
              : percentageRelativeToTotalSupply,
      nativeToken: freezed == nativeToken ? _value.nativeToken! : nativeToken,
      portfolioPercentage: freezed == portfolioPercentage
          ? _value.portfolioPercentage!
          : portfolioPercentage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.tokenAddress = "",
      this.symbol = "",
      this.name = "",
      this.logo = "",
      this.thumbnail = "",
      this.decimals = 0,
      this.balance = "",
      this.possibleSpam = false,
      this.verifiedContract = false,
      this.balanceFormatted = "",
      this.usdPrice = 0.0,
      this.usdPrice24hrPercentChange = 0.0,
      this.usdPrice24hrUsdChange = 0.0,
      this.usdValue = 0,
      this.usdValue24hrUsdChange = 0,
      this.totalSupply = "",
      this.totalSupplyFormatted = "",
      this.percentageRelativeToTotalSupply = "",
      this.nativeToken = false,
      this.portfolioPercentage = 0});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  @JsonKey()
  final dynamic tokenAddress;
  @override
  @JsonKey()
  final dynamic symbol;
  @override
  @JsonKey()
  final dynamic name;
  @override
  @JsonKey()
  final dynamic logo;
  @override
  @JsonKey()
  final dynamic thumbnail;
  @override
  @JsonKey()
  final dynamic decimals;
  @override
  @JsonKey()
  final dynamic balance;
  @override
  @JsonKey()
  final dynamic possibleSpam;
  @override
  @JsonKey()
  final dynamic verifiedContract;
  @override
  @JsonKey()
  final dynamic balanceFormatted;
  @override
  @JsonKey()
  final dynamic usdPrice;
  @override
  @JsonKey()
  final dynamic usdPrice24hrPercentChange;
  @override
  @JsonKey()
  final dynamic usdPrice24hrUsdChange;
  @override
  @JsonKey()
  final dynamic usdValue;
  @override
  @JsonKey()
  final dynamic usdValue24hrUsdChange;
  @override
  @JsonKey()
  final dynamic totalSupply;
  @override
  @JsonKey()
  final dynamic totalSupplyFormatted;
  @override
  @JsonKey()
  final dynamic percentageRelativeToTotalSupply;
  @override
  @JsonKey()
  final dynamic nativeToken;
  @override
  @JsonKey()
  final dynamic portfolioPercentage;

  @override
  String toString() {
    return 'Result(tokenAddress: $tokenAddress, symbol: $symbol, name: $name, logo: $logo, thumbnail: $thumbnail, decimals: $decimals, balance: $balance, possibleSpam: $possibleSpam, verifiedContract: $verifiedContract, balanceFormatted: $balanceFormatted, usdPrice: $usdPrice, usdPrice24hrPercentChange: $usdPrice24hrPercentChange, usdPrice24hrUsdChange: $usdPrice24hrUsdChange, usdValue: $usdValue, usdValue24hrUsdChange: $usdValue24hrUsdChange, totalSupply: $totalSupply, totalSupplyFormatted: $totalSupplyFormatted, percentageRelativeToTotalSupply: $percentageRelativeToTotalSupply, nativeToken: $nativeToken, portfolioPercentage: $portfolioPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            const DeepCollectionEquality()
                .equals(other.tokenAddress, tokenAddress) &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.decimals, decimals) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality()
                .equals(other.possibleSpam, possibleSpam) &&
            const DeepCollectionEquality()
                .equals(other.verifiedContract, verifiedContract) &&
            const DeepCollectionEquality()
                .equals(other.balanceFormatted, balanceFormatted) &&
            const DeepCollectionEquality().equals(other.usdPrice, usdPrice) &&
            const DeepCollectionEquality().equals(
                other.usdPrice24hrPercentChange, usdPrice24hrPercentChange) &&
            const DeepCollectionEquality()
                .equals(other.usdPrice24hrUsdChange, usdPrice24hrUsdChange) &&
            const DeepCollectionEquality().equals(other.usdValue, usdValue) &&
            const DeepCollectionEquality()
                .equals(other.usdValue24hrUsdChange, usdValue24hrUsdChange) &&
            const DeepCollectionEquality()
                .equals(other.totalSupply, totalSupply) &&
            const DeepCollectionEquality()
                .equals(other.totalSupplyFormatted, totalSupplyFormatted) &&
            const DeepCollectionEquality().equals(
                other.percentageRelativeToTotalSupply,
                percentageRelativeToTotalSupply) &&
            const DeepCollectionEquality()
                .equals(other.nativeToken, nativeToken) &&
            const DeepCollectionEquality()
                .equals(other.portfolioPercentage, portfolioPercentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(tokenAddress),
        const DeepCollectionEquality().hash(symbol),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(logo),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(decimals),
        const DeepCollectionEquality().hash(balance),
        const DeepCollectionEquality().hash(possibleSpam),
        const DeepCollectionEquality().hash(verifiedContract),
        const DeepCollectionEquality().hash(balanceFormatted),
        const DeepCollectionEquality().hash(usdPrice),
        const DeepCollectionEquality().hash(usdPrice24hrPercentChange),
        const DeepCollectionEquality().hash(usdPrice24hrUsdChange),
        const DeepCollectionEquality().hash(usdValue),
        const DeepCollectionEquality().hash(usdValue24hrUsdChange),
        const DeepCollectionEquality().hash(totalSupply),
        const DeepCollectionEquality().hash(totalSupplyFormatted),
        const DeepCollectionEquality().hash(percentageRelativeToTotalSupply),
        const DeepCollectionEquality().hash(nativeToken),
        const DeepCollectionEquality().hash(portfolioPercentage)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final dynamic tokenAddress,
      final dynamic symbol,
      final dynamic name,
      final dynamic logo,
      final dynamic thumbnail,
      final dynamic decimals,
      final dynamic balance,
      final dynamic possibleSpam,
      final dynamic verifiedContract,
      final dynamic balanceFormatted,
      final dynamic usdPrice,
      final dynamic usdPrice24hrPercentChange,
      final dynamic usdPrice24hrUsdChange,
      final dynamic usdValue,
      final dynamic usdValue24hrUsdChange,
      final dynamic totalSupply,
      final dynamic totalSupplyFormatted,
      final dynamic percentageRelativeToTotalSupply,
      final dynamic nativeToken,
      final dynamic portfolioPercentage}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  dynamic get tokenAddress;
  @override
  dynamic get symbol;
  @override
  dynamic get name;
  @override
  dynamic get logo;
  @override
  dynamic get thumbnail;
  @override
  dynamic get decimals;
  @override
  dynamic get balance;
  @override
  dynamic get possibleSpam;
  @override
  dynamic get verifiedContract;
  @override
  dynamic get balanceFormatted;
  @override
  dynamic get usdPrice;
  @override
  dynamic get usdPrice24hrPercentChange;
  @override
  dynamic get usdPrice24hrUsdChange;
  @override
  dynamic get usdValue;
  @override
  dynamic get usdValue24hrUsdChange;
  @override
  dynamic get totalSupply;
  @override
  dynamic get totalSupplyFormatted;
  @override
  dynamic get percentageRelativeToTotalSupply;
  @override
  dynamic get nativeToken;
  @override
  dynamic get portfolioPercentage;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
