// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'swap_details_quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SwapDetailsQuote _$SwapDetailsQuoteFromJson(Map<String, dynamic> json) {
  return _SwapDetailsQuote.fromJson(json);
}

/// @nodoc
mixin _$SwapDetailsQuote {
  dynamic get chainId => throw _privateConstructorUsedError;
  dynamic get price => throw _privateConstructorUsedError;
  dynamic get grossPrice => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  dynamic get gasPrice => throw _privateConstructorUsedError;
  dynamic get gas => throw _privateConstructorUsedError;
  dynamic get buyTokenAddress => throw _privateConstructorUsedError;
  dynamic get buyAmount => throw _privateConstructorUsedError;
  dynamic get sellTokenAddress => throw _privateConstructorUsedError;
  dynamic get sellAmount => throw _privateConstructorUsedError;
  List<String>? get sources => throw _privateConstructorUsedError;
  dynamic get to => throw _privateConstructorUsedError;
  List<Orders>? get orders => throw _privateConstructorUsedError;
  Fees? get fees => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwapDetailsQuoteCopyWith<SwapDetailsQuote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapDetailsQuoteCopyWith<$Res> {
  factory $SwapDetailsQuoteCopyWith(
          SwapDetailsQuote value, $Res Function(SwapDetailsQuote) then) =
      _$SwapDetailsQuoteCopyWithImpl<$Res, SwapDetailsQuote>;
  @useResult
  $Res call(
      {dynamic chainId,
      dynamic price,
      dynamic grossPrice,
      dynamic value,
      dynamic gasPrice,
      dynamic gas,
      dynamic buyTokenAddress,
      dynamic buyAmount,
      dynamic sellTokenAddress,
      dynamic sellAmount,
      List<String>? sources,
      dynamic to,
      List<Orders>? orders,
      Fees? fees});

  $FeesCopyWith<$Res>? get fees;
}

/// @nodoc
class _$SwapDetailsQuoteCopyWithImpl<$Res, $Val extends SwapDetailsQuote>
    implements $SwapDetailsQuoteCopyWith<$Res> {
  _$SwapDetailsQuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chainId = freezed,
    Object? price = freezed,
    Object? grossPrice = freezed,
    Object? value = freezed,
    Object? gasPrice = freezed,
    Object? gas = freezed,
    Object? buyTokenAddress = freezed,
    Object? buyAmount = freezed,
    Object? sellTokenAddress = freezed,
    Object? sellAmount = freezed,
    Object? sources = freezed,
    Object? to = freezed,
    Object? orders = freezed,
    Object? fees = freezed,
  }) {
    return _then(_value.copyWith(
      chainId: freezed == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      grossPrice: freezed == grossPrice
          ? _value.grossPrice
          : grossPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gasPrice: freezed == gasPrice
          ? _value.gasPrice
          : gasPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gas: freezed == gas
          ? _value.gas
          : gas // ignore: cast_nullable_to_non_nullable
              as dynamic,
      buyTokenAddress: freezed == buyTokenAddress
          ? _value.buyTokenAddress
          : buyTokenAddress // ignore: cast_nullable_to_non_nullable
              as dynamic,
      buyAmount: freezed == buyAmount
          ? _value.buyAmount
          : buyAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sellTokenAddress: freezed == sellTokenAddress
          ? _value.sellTokenAddress
          : sellTokenAddress // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sellAmount: freezed == sellAmount
          ? _value.sellAmount
          : sellAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Orders>?,
      fees: freezed == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as Fees?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeesCopyWith<$Res>? get fees {
    if (_value.fees == null) {
      return null;
    }

    return $FeesCopyWith<$Res>(_value.fees!, (value) {
      return _then(_value.copyWith(fees: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SwapDetailsQuoteImplCopyWith<$Res>
    implements $SwapDetailsQuoteCopyWith<$Res> {
  factory _$$SwapDetailsQuoteImplCopyWith(_$SwapDetailsQuoteImpl value,
          $Res Function(_$SwapDetailsQuoteImpl) then) =
      __$$SwapDetailsQuoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic chainId,
      dynamic price,
      dynamic grossPrice,
      dynamic value,
      dynamic gasPrice,
      dynamic gas,
      dynamic buyTokenAddress,
      dynamic buyAmount,
      dynamic sellTokenAddress,
      dynamic sellAmount,
      List<String>? sources,
      dynamic to,
      List<Orders>? orders,
      Fees? fees});

  @override
  $FeesCopyWith<$Res>? get fees;
}

/// @nodoc
class __$$SwapDetailsQuoteImplCopyWithImpl<$Res>
    extends _$SwapDetailsQuoteCopyWithImpl<$Res, _$SwapDetailsQuoteImpl>
    implements _$$SwapDetailsQuoteImplCopyWith<$Res> {
  __$$SwapDetailsQuoteImplCopyWithImpl(_$SwapDetailsQuoteImpl _value,
      $Res Function(_$SwapDetailsQuoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chainId = freezed,
    Object? price = freezed,
    Object? grossPrice = freezed,
    Object? value = freezed,
    Object? gasPrice = freezed,
    Object? gas = freezed,
    Object? buyTokenAddress = freezed,
    Object? buyAmount = freezed,
    Object? sellTokenAddress = freezed,
    Object? sellAmount = freezed,
    Object? sources = freezed,
    Object? to = freezed,
    Object? orders = freezed,
    Object? fees = freezed,
  }) {
    return _then(_$SwapDetailsQuoteImpl(
      chainId: freezed == chainId ? _value.chainId! : chainId,
      price: freezed == price ? _value.price! : price,
      grossPrice: freezed == grossPrice ? _value.grossPrice! : grossPrice,
      value: freezed == value ? _value.value! : value,
      gasPrice: freezed == gasPrice ? _value.gasPrice! : gasPrice,
      gas: freezed == gas ? _value.gas! : gas,
      buyTokenAddress: freezed == buyTokenAddress
          ? _value.buyTokenAddress!
          : buyTokenAddress,
      buyAmount: freezed == buyAmount ? _value.buyAmount! : buyAmount,
      sellTokenAddress: freezed == sellTokenAddress
          ? _value.sellTokenAddress!
          : sellTokenAddress,
      sellAmount: freezed == sellAmount ? _value.sellAmount! : sellAmount,
      sources: freezed == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      to: freezed == to ? _value.to! : to,
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Orders>?,
      fees: freezed == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as Fees?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwapDetailsQuoteImpl
    with DiagnosticableTreeMixin
    implements _SwapDetailsQuote {
  const _$SwapDetailsQuoteImpl(
      {this.chainId = 0,
      this.price = 0.0,
      this.grossPrice = 0.0,
      this.value = "",
      this.gasPrice = 0,
      this.gas = 0,
      this.buyTokenAddress = "",
      this.buyAmount = 0,
      this.sellTokenAddress = "",
      this.sellAmount = "",
      final List<String>? sources,
      this.to = "",
      final List<Orders>? orders,
      this.fees})
      : _sources = sources,
        _orders = orders;

  factory _$SwapDetailsQuoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwapDetailsQuoteImplFromJson(json);

  @override
  @JsonKey()
  final dynamic chainId;
  @override
  @JsonKey()
  final dynamic price;
  @override
  @JsonKey()
  final dynamic grossPrice;
  @override
  @JsonKey()
  final dynamic value;
  @override
  @JsonKey()
  final dynamic gasPrice;
  @override
  @JsonKey()
  final dynamic gas;
  @override
  @JsonKey()
  final dynamic buyTokenAddress;
  @override
  @JsonKey()
  final dynamic buyAmount;
  @override
  @JsonKey()
  final dynamic sellTokenAddress;
  @override
  @JsonKey()
  final dynamic sellAmount;
  final List<String>? _sources;
  @override
  List<String>? get sources {
    final value = _sources;
    if (value == null) return null;
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final dynamic to;
  final List<Orders>? _orders;
  @override
  List<Orders>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Fees? fees;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SwapDetailsQuote(chainId: $chainId, price: $price, grossPrice: $grossPrice, value: $value, gasPrice: $gasPrice, gas: $gas, buyTokenAddress: $buyTokenAddress, buyAmount: $buyAmount, sellTokenAddress: $sellTokenAddress, sellAmount: $sellAmount, sources: $sources, to: $to, orders: $orders, fees: $fees)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SwapDetailsQuote'))
      ..add(DiagnosticsProperty('chainId', chainId))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('grossPrice', grossPrice))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('gasPrice', gasPrice))
      ..add(DiagnosticsProperty('gas', gas))
      ..add(DiagnosticsProperty('buyTokenAddress', buyTokenAddress))
      ..add(DiagnosticsProperty('buyAmount', buyAmount))
      ..add(DiagnosticsProperty('sellTokenAddress', sellTokenAddress))
      ..add(DiagnosticsProperty('sellAmount', sellAmount))
      ..add(DiagnosticsProperty('sources', sources))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('orders', orders))
      ..add(DiagnosticsProperty('fees', fees));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapDetailsQuoteImpl &&
            const DeepCollectionEquality().equals(other.chainId, chainId) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.grossPrice, grossPrice) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.gasPrice, gasPrice) &&
            const DeepCollectionEquality().equals(other.gas, gas) &&
            const DeepCollectionEquality()
                .equals(other.buyTokenAddress, buyTokenAddress) &&
            const DeepCollectionEquality().equals(other.buyAmount, buyAmount) &&
            const DeepCollectionEquality()
                .equals(other.sellTokenAddress, sellTokenAddress) &&
            const DeepCollectionEquality()
                .equals(other.sellAmount, sellAmount) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.fees, fees) || other.fees == fees));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chainId),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(grossPrice),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(gasPrice),
      const DeepCollectionEquality().hash(gas),
      const DeepCollectionEquality().hash(buyTokenAddress),
      const DeepCollectionEquality().hash(buyAmount),
      const DeepCollectionEquality().hash(sellTokenAddress),
      const DeepCollectionEquality().hash(sellAmount),
      const DeepCollectionEquality().hash(_sources),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(_orders),
      fees);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapDetailsQuoteImplCopyWith<_$SwapDetailsQuoteImpl> get copyWith =>
      __$$SwapDetailsQuoteImplCopyWithImpl<_$SwapDetailsQuoteImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwapDetailsQuoteImplToJson(
      this,
    );
  }
}

abstract class _SwapDetailsQuote implements SwapDetailsQuote {
  const factory _SwapDetailsQuote(
      {final dynamic chainId,
      final dynamic price,
      final dynamic grossPrice,
      final dynamic value,
      final dynamic gasPrice,
      final dynamic gas,
      final dynamic buyTokenAddress,
      final dynamic buyAmount,
      final dynamic sellTokenAddress,
      final dynamic sellAmount,
      final List<String>? sources,
      final dynamic to,
      final List<Orders>? orders,
      final Fees? fees}) = _$SwapDetailsQuoteImpl;

  factory _SwapDetailsQuote.fromJson(Map<String, dynamic> json) =
      _$SwapDetailsQuoteImpl.fromJson;

  @override
  dynamic get chainId;
  @override
  dynamic get price;
  @override
  dynamic get grossPrice;
  @override
  dynamic get value;
  @override
  dynamic get gasPrice;
  @override
  dynamic get gas;
  @override
  dynamic get buyTokenAddress;
  @override
  dynamic get buyAmount;
  @override
  dynamic get sellTokenAddress;
  @override
  dynamic get sellAmount;
  @override
  List<String>? get sources;
  @override
  dynamic get to;
  @override
  List<Orders>? get orders;
  @override
  Fees? get fees;
  @override
  @JsonKey(ignore: true)
  _$$SwapDetailsQuoteImplCopyWith<_$SwapDetailsQuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Orders _$OrdersFromJson(Map<String, dynamic> json) {
  return _Orders.fromJson(json);
}

/// @nodoc
mixin _$Orders {
  dynamic get type => throw _privateConstructorUsedError;
  dynamic get source => throw _privateConstructorUsedError;
  dynamic get makerToken => throw _privateConstructorUsedError;
  dynamic get takerToken => throw _privateConstructorUsedError;
  dynamic get makerAmount => throw _privateConstructorUsedError;
  dynamic get takerAmount => throw _privateConstructorUsedError;
  FillData? get fillData => throw _privateConstructorUsedError;
  Fill? get fill => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersCopyWith<Orders> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersCopyWith<$Res> {
  factory $OrdersCopyWith(Orders value, $Res Function(Orders) then) =
      _$OrdersCopyWithImpl<$Res, Orders>;
  @useResult
  $Res call(
      {dynamic type,
      dynamic source,
      dynamic makerToken,
      dynamic takerToken,
      dynamic makerAmount,
      dynamic takerAmount,
      FillData? fillData,
      Fill? fill});

  $FillDataCopyWith<$Res>? get fillData;
  $FillCopyWith<$Res>? get fill;
}

/// @nodoc
class _$OrdersCopyWithImpl<$Res, $Val extends Orders>
    implements $OrdersCopyWith<$Res> {
  _$OrdersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? source = freezed,
    Object? makerToken = freezed,
    Object? takerToken = freezed,
    Object? makerAmount = freezed,
    Object? takerAmount = freezed,
    Object? fillData = freezed,
    Object? fill = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as dynamic,
      makerToken: freezed == makerToken
          ? _value.makerToken
          : makerToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      takerToken: freezed == takerToken
          ? _value.takerToken
          : takerToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      makerAmount: freezed == makerAmount
          ? _value.makerAmount
          : makerAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      takerAmount: freezed == takerAmount
          ? _value.takerAmount
          : takerAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fillData: freezed == fillData
          ? _value.fillData
          : fillData // ignore: cast_nullable_to_non_nullable
              as FillData?,
      fill: freezed == fill
          ? _value.fill
          : fill // ignore: cast_nullable_to_non_nullable
              as Fill?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FillDataCopyWith<$Res>? get fillData {
    if (_value.fillData == null) {
      return null;
    }

    return $FillDataCopyWith<$Res>(_value.fillData!, (value) {
      return _then(_value.copyWith(fillData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FillCopyWith<$Res>? get fill {
    if (_value.fill == null) {
      return null;
    }

    return $FillCopyWith<$Res>(_value.fill!, (value) {
      return _then(_value.copyWith(fill: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrdersImplCopyWith<$Res> implements $OrdersCopyWith<$Res> {
  factory _$$OrdersImplCopyWith(
          _$OrdersImpl value, $Res Function(_$OrdersImpl) then) =
      __$$OrdersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic type,
      dynamic source,
      dynamic makerToken,
      dynamic takerToken,
      dynamic makerAmount,
      dynamic takerAmount,
      FillData? fillData,
      Fill? fill});

  @override
  $FillDataCopyWith<$Res>? get fillData;
  @override
  $FillCopyWith<$Res>? get fill;
}

/// @nodoc
class __$$OrdersImplCopyWithImpl<$Res>
    extends _$OrdersCopyWithImpl<$Res, _$OrdersImpl>
    implements _$$OrdersImplCopyWith<$Res> {
  __$$OrdersImplCopyWithImpl(
      _$OrdersImpl _value, $Res Function(_$OrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? source = freezed,
    Object? makerToken = freezed,
    Object? takerToken = freezed,
    Object? makerAmount = freezed,
    Object? takerAmount = freezed,
    Object? fillData = freezed,
    Object? fill = freezed,
  }) {
    return _then(_$OrdersImpl(
      type: freezed == type ? _value.type! : type,
      source: freezed == source ? _value.source! : source,
      makerToken: freezed == makerToken ? _value.makerToken! : makerToken,
      takerToken: freezed == takerToken ? _value.takerToken! : takerToken,
      makerAmount: freezed == makerAmount ? _value.makerAmount! : makerAmount,
      takerAmount: freezed == takerAmount ? _value.takerAmount! : takerAmount,
      fillData: freezed == fillData
          ? _value.fillData
          : fillData // ignore: cast_nullable_to_non_nullable
              as FillData?,
      fill: freezed == fill
          ? _value.fill
          : fill // ignore: cast_nullable_to_non_nullable
              as Fill?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersImpl with DiagnosticableTreeMixin implements _Orders {
  const _$OrdersImpl(
      {this.type = 0,
      this.source = "",
      this.makerToken = "",
      this.takerToken = "",
      this.makerAmount = "",
      this.takerAmount = "",
      this.fillData,
      this.fill});

  factory _$OrdersImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersImplFromJson(json);

  @override
  @JsonKey()
  final dynamic type;
  @override
  @JsonKey()
  final dynamic source;
  @override
  @JsonKey()
  final dynamic makerToken;
  @override
  @JsonKey()
  final dynamic takerToken;
  @override
  @JsonKey()
  final dynamic makerAmount;
  @override
  @JsonKey()
  final dynamic takerAmount;
  @override
  final FillData? fillData;
  @override
  final Fill? fill;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Orders(type: $type, source: $source, makerToken: $makerToken, takerToken: $takerToken, makerAmount: $makerAmount, takerAmount: $takerAmount, fillData: $fillData, fill: $fill)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Orders'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('source', source))
      ..add(DiagnosticsProperty('makerToken', makerToken))
      ..add(DiagnosticsProperty('takerToken', takerToken))
      ..add(DiagnosticsProperty('makerAmount', makerAmount))
      ..add(DiagnosticsProperty('takerAmount', takerAmount))
      ..add(DiagnosticsProperty('fillData', fillData))
      ..add(DiagnosticsProperty('fill', fill));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersImpl &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality()
                .equals(other.makerToken, makerToken) &&
            const DeepCollectionEquality()
                .equals(other.takerToken, takerToken) &&
            const DeepCollectionEquality()
                .equals(other.makerAmount, makerAmount) &&
            const DeepCollectionEquality()
                .equals(other.takerAmount, takerAmount) &&
            (identical(other.fillData, fillData) ||
                other.fillData == fillData) &&
            (identical(other.fill, fill) || other.fill == fill));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(makerToken),
      const DeepCollectionEquality().hash(takerToken),
      const DeepCollectionEquality().hash(makerAmount),
      const DeepCollectionEquality().hash(takerAmount),
      fillData,
      fill);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      __$$OrdersImplCopyWithImpl<_$OrdersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersImplToJson(
      this,
    );
  }
}

abstract class _Orders implements Orders {
  const factory _Orders(
      {final dynamic type,
      final dynamic source,
      final dynamic makerToken,
      final dynamic takerToken,
      final dynamic makerAmount,
      final dynamic takerAmount,
      final FillData? fillData,
      final Fill? fill}) = _$OrdersImpl;

  factory _Orders.fromJson(Map<String, dynamic> json) = _$OrdersImpl.fromJson;

  @override
  dynamic get type;
  @override
  dynamic get source;
  @override
  dynamic get makerToken;
  @override
  dynamic get takerToken;
  @override
  dynamic get makerAmount;
  @override
  dynamic get takerAmount;
  @override
  FillData? get fillData;
  @override
  Fill? get fill;
  @override
  @JsonKey(ignore: true)
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FillData _$FillDataFromJson(Map<String, dynamic> json) {
  return _FillData.fromJson(json);
}

/// @nodoc
mixin _$FillData {
  dynamic get router => throw _privateConstructorUsedError;
  dynamic get path => throw _privateConstructorUsedError;
  dynamic get gasUsed => throw _privateConstructorUsedError;
  dynamic get routerVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FillDataCopyWith<FillData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FillDataCopyWith<$Res> {
  factory $FillDataCopyWith(FillData value, $Res Function(FillData) then) =
      _$FillDataCopyWithImpl<$Res, FillData>;
  @useResult
  $Res call(
      {dynamic router, dynamic path, dynamic gasUsed, dynamic routerVersion});
}

/// @nodoc
class _$FillDataCopyWithImpl<$Res, $Val extends FillData>
    implements $FillDataCopyWith<$Res> {
  _$FillDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? router = freezed,
    Object? path = freezed,
    Object? gasUsed = freezed,
    Object? routerVersion = freezed,
  }) {
    return _then(_value.copyWith(
      router: freezed == router
          ? _value.router
          : router // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gasUsed: freezed == gasUsed
          ? _value.gasUsed
          : gasUsed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      routerVersion: freezed == routerVersion
          ? _value.routerVersion
          : routerVersion // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FillDataImplCopyWith<$Res>
    implements $FillDataCopyWith<$Res> {
  factory _$$FillDataImplCopyWith(
          _$FillDataImpl value, $Res Function(_$FillDataImpl) then) =
      __$$FillDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic router, dynamic path, dynamic gasUsed, dynamic routerVersion});
}

/// @nodoc
class __$$FillDataImplCopyWithImpl<$Res>
    extends _$FillDataCopyWithImpl<$Res, _$FillDataImpl>
    implements _$$FillDataImplCopyWith<$Res> {
  __$$FillDataImplCopyWithImpl(
      _$FillDataImpl _value, $Res Function(_$FillDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? router = freezed,
    Object? path = freezed,
    Object? gasUsed = freezed,
    Object? routerVersion = freezed,
  }) {
    return _then(_$FillDataImpl(
      router: freezed == router ? _value.router! : router,
      path: freezed == path ? _value.path! : path,
      gasUsed: freezed == gasUsed ? _value.gasUsed! : gasUsed,
      routerVersion:
          freezed == routerVersion ? _value.routerVersion! : routerVersion,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FillDataImpl with DiagnosticableTreeMixin implements _FillData {
  const _$FillDataImpl(
      {this.router = "",
      this.path = "",
      this.gasUsed = 0,
      this.routerVersion = 0});

  factory _$FillDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FillDataImplFromJson(json);

  @override
  @JsonKey()
  final dynamic router;
  @override
  @JsonKey()
  final dynamic path;
  @override
  @JsonKey()
  final dynamic gasUsed;
  @override
  @JsonKey()
  final dynamic routerVersion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FillData(router: $router, path: $path, gasUsed: $gasUsed, routerVersion: $routerVersion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FillData'))
      ..add(DiagnosticsProperty('router', router))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('gasUsed', gasUsed))
      ..add(DiagnosticsProperty('routerVersion', routerVersion));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FillDataImpl &&
            const DeepCollectionEquality().equals(other.router, router) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.gasUsed, gasUsed) &&
            const DeepCollectionEquality()
                .equals(other.routerVersion, routerVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(router),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(gasUsed),
      const DeepCollectionEquality().hash(routerVersion));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FillDataImplCopyWith<_$FillDataImpl> get copyWith =>
      __$$FillDataImplCopyWithImpl<_$FillDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FillDataImplToJson(
      this,
    );
  }
}

abstract class _FillData implements FillData {
  const factory _FillData(
      {final dynamic router,
      final dynamic path,
      final dynamic gasUsed,
      final dynamic routerVersion}) = _$FillDataImpl;

  factory _FillData.fromJson(Map<String, dynamic> json) =
      _$FillDataImpl.fromJson;

  @override
  dynamic get router;
  @override
  dynamic get path;
  @override
  dynamic get gasUsed;
  @override
  dynamic get routerVersion;
  @override
  @JsonKey(ignore: true)
  _$$FillDataImplCopyWith<_$FillDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fill _$FillFromJson(Map<String, dynamic> json) {
  return _Fill.fromJson(json);
}

/// @nodoc
mixin _$Fill {
  dynamic get input => throw _privateConstructorUsedError;
  dynamic get output => throw _privateConstructorUsedError;
  dynamic get adjustedOutput => throw _privateConstructorUsedError;
  dynamic get gas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FillCopyWith<Fill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FillCopyWith<$Res> {
  factory $FillCopyWith(Fill value, $Res Function(Fill) then) =
      _$FillCopyWithImpl<$Res, Fill>;
  @useResult
  $Res call(
      {dynamic input, dynamic output, dynamic adjustedOutput, dynamic gas});
}

/// @nodoc
class _$FillCopyWithImpl<$Res, $Val extends Fill>
    implements $FillCopyWith<$Res> {
  _$FillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = freezed,
    Object? output = freezed,
    Object? adjustedOutput = freezed,
    Object? gas = freezed,
  }) {
    return _then(_value.copyWith(
      input: freezed == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as dynamic,
      output: freezed == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as dynamic,
      adjustedOutput: freezed == adjustedOutput
          ? _value.adjustedOutput
          : adjustedOutput // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gas: freezed == gas
          ? _value.gas
          : gas // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FillImplCopyWith<$Res> implements $FillCopyWith<$Res> {
  factory _$$FillImplCopyWith(
          _$FillImpl value, $Res Function(_$FillImpl) then) =
      __$$FillImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic input, dynamic output, dynamic adjustedOutput, dynamic gas});
}

/// @nodoc
class __$$FillImplCopyWithImpl<$Res>
    extends _$FillCopyWithImpl<$Res, _$FillImpl>
    implements _$$FillImplCopyWith<$Res> {
  __$$FillImplCopyWithImpl(_$FillImpl _value, $Res Function(_$FillImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = freezed,
    Object? output = freezed,
    Object? adjustedOutput = freezed,
    Object? gas = freezed,
  }) {
    return _then(_$FillImpl(
      input: freezed == input ? _value.input! : input,
      output: freezed == output ? _value.output! : output,
      adjustedOutput:
          freezed == adjustedOutput ? _value.adjustedOutput! : adjustedOutput,
      gas: freezed == gas ? _value.gas! : gas,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FillImpl with DiagnosticableTreeMixin implements _Fill {
  const _$FillImpl(
      {this.input = "",
      this.output = "",
      this.adjustedOutput = "",
      this.gas = 0});

  factory _$FillImpl.fromJson(Map<String, dynamic> json) =>
      _$$FillImplFromJson(json);

  @override
  @JsonKey()
  final dynamic input;
  @override
  @JsonKey()
  final dynamic output;
  @override
  @JsonKey()
  final dynamic adjustedOutput;
  @override
  @JsonKey()
  final dynamic gas;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Fill(input: $input, output: $output, adjustedOutput: $adjustedOutput, gas: $gas)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Fill'))
      ..add(DiagnosticsProperty('input', input))
      ..add(DiagnosticsProperty('output', output))
      ..add(DiagnosticsProperty('adjustedOutput', adjustedOutput))
      ..add(DiagnosticsProperty('gas', gas));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FillImpl &&
            const DeepCollectionEquality().equals(other.input, input) &&
            const DeepCollectionEquality().equals(other.output, output) &&
            const DeepCollectionEquality()
                .equals(other.adjustedOutput, adjustedOutput) &&
            const DeepCollectionEquality().equals(other.gas, gas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(input),
      const DeepCollectionEquality().hash(output),
      const DeepCollectionEquality().hash(adjustedOutput),
      const DeepCollectionEquality().hash(gas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FillImplCopyWith<_$FillImpl> get copyWith =>
      __$$FillImplCopyWithImpl<_$FillImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FillImplToJson(
      this,
    );
  }
}

abstract class _Fill implements Fill {
  const factory _Fill(
      {final dynamic input,
      final dynamic output,
      final dynamic adjustedOutput,
      final dynamic gas}) = _$FillImpl;

  factory _Fill.fromJson(Map<String, dynamic> json) = _$FillImpl.fromJson;

  @override
  dynamic get input;
  @override
  dynamic get output;
  @override
  dynamic get adjustedOutput;
  @override
  dynamic get gas;
  @override
  @JsonKey(ignore: true)
  _$$FillImplCopyWith<_$FillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fees _$FeesFromJson(Map<String, dynamic> json) {
  return _Fees.fromJson(json);
}

/// @nodoc
mixin _$Fees {
  ZeroExFee? get zeroExFee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeesCopyWith<Fees> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeesCopyWith<$Res> {
  factory $FeesCopyWith(Fees value, $Res Function(Fees) then) =
      _$FeesCopyWithImpl<$Res, Fees>;
  @useResult
  $Res call({ZeroExFee? zeroExFee});

  $ZeroExFeeCopyWith<$Res>? get zeroExFee;
}

/// @nodoc
class _$FeesCopyWithImpl<$Res, $Val extends Fees>
    implements $FeesCopyWith<$Res> {
  _$FeesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zeroExFee = freezed,
  }) {
    return _then(_value.copyWith(
      zeroExFee: freezed == zeroExFee
          ? _value.zeroExFee
          : zeroExFee // ignore: cast_nullable_to_non_nullable
              as ZeroExFee?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ZeroExFeeCopyWith<$Res>? get zeroExFee {
    if (_value.zeroExFee == null) {
      return null;
    }

    return $ZeroExFeeCopyWith<$Res>(_value.zeroExFee!, (value) {
      return _then(_value.copyWith(zeroExFee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeesImplCopyWith<$Res> implements $FeesCopyWith<$Res> {
  factory _$$FeesImplCopyWith(
          _$FeesImpl value, $Res Function(_$FeesImpl) then) =
      __$$FeesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ZeroExFee? zeroExFee});

  @override
  $ZeroExFeeCopyWith<$Res>? get zeroExFee;
}

/// @nodoc
class __$$FeesImplCopyWithImpl<$Res>
    extends _$FeesCopyWithImpl<$Res, _$FeesImpl>
    implements _$$FeesImplCopyWith<$Res> {
  __$$FeesImplCopyWithImpl(_$FeesImpl _value, $Res Function(_$FeesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zeroExFee = freezed,
  }) {
    return _then(_$FeesImpl(
      zeroExFee: freezed == zeroExFee
          ? _value.zeroExFee
          : zeroExFee // ignore: cast_nullable_to_non_nullable
              as ZeroExFee?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeesImpl with DiagnosticableTreeMixin implements _Fees {
  const _$FeesImpl({this.zeroExFee});

  factory _$FeesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeesImplFromJson(json);

  @override
  final ZeroExFee? zeroExFee;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Fees(zeroExFee: $zeroExFee)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Fees'))
      ..add(DiagnosticsProperty('zeroExFee', zeroExFee));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeesImpl &&
            (identical(other.zeroExFee, zeroExFee) ||
                other.zeroExFee == zeroExFee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, zeroExFee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeesImplCopyWith<_$FeesImpl> get copyWith =>
      __$$FeesImplCopyWithImpl<_$FeesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeesImplToJson(
      this,
    );
  }
}

abstract class _Fees implements Fees {
  const factory _Fees({final ZeroExFee? zeroExFee}) = _$FeesImpl;

  factory _Fees.fromJson(Map<String, dynamic> json) = _$FeesImpl.fromJson;

  @override
  ZeroExFee? get zeroExFee;
  @override
  @JsonKey(ignore: true)
  _$$FeesImplCopyWith<_$FeesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ZeroExFee _$ZeroExFeeFromJson(Map<String, dynamic> json) {
  return _ZeroExFee.fromJson(json);
}

/// @nodoc
mixin _$ZeroExFee {
  dynamic get feeType => throw _privateConstructorUsedError;
  dynamic get feeToken => throw _privateConstructorUsedError;
  dynamic get feeAmount => throw _privateConstructorUsedError;
  dynamic get billingType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZeroExFeeCopyWith<ZeroExFee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZeroExFeeCopyWith<$Res> {
  factory $ZeroExFeeCopyWith(ZeroExFee value, $Res Function(ZeroExFee) then) =
      _$ZeroExFeeCopyWithImpl<$Res, ZeroExFee>;
  @useResult
  $Res call(
      {dynamic feeType,
      dynamic feeToken,
      dynamic feeAmount,
      dynamic billingType});
}

/// @nodoc
class _$ZeroExFeeCopyWithImpl<$Res, $Val extends ZeroExFee>
    implements $ZeroExFeeCopyWith<$Res> {
  _$ZeroExFeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeType = freezed,
    Object? feeToken = freezed,
    Object? feeAmount = freezed,
    Object? billingType = freezed,
  }) {
    return _then(_value.copyWith(
      feeType: freezed == feeType
          ? _value.feeType
          : feeType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      feeToken: freezed == feeToken
          ? _value.feeToken
          : feeToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      feeAmount: freezed == feeAmount
          ? _value.feeAmount
          : feeAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      billingType: freezed == billingType
          ? _value.billingType
          : billingType // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZeroExFeeImplCopyWith<$Res>
    implements $ZeroExFeeCopyWith<$Res> {
  factory _$$ZeroExFeeImplCopyWith(
          _$ZeroExFeeImpl value, $Res Function(_$ZeroExFeeImpl) then) =
      __$$ZeroExFeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic feeType,
      dynamic feeToken,
      dynamic feeAmount,
      dynamic billingType});
}

/// @nodoc
class __$$ZeroExFeeImplCopyWithImpl<$Res>
    extends _$ZeroExFeeCopyWithImpl<$Res, _$ZeroExFeeImpl>
    implements _$$ZeroExFeeImplCopyWith<$Res> {
  __$$ZeroExFeeImplCopyWithImpl(
      _$ZeroExFeeImpl _value, $Res Function(_$ZeroExFeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeType = freezed,
    Object? feeToken = freezed,
    Object? feeAmount = freezed,
    Object? billingType = freezed,
  }) {
    return _then(_$ZeroExFeeImpl(
      feeType: freezed == feeType ? _value.feeType! : feeType,
      feeToken: freezed == feeToken ? _value.feeToken! : feeToken,
      feeAmount: freezed == feeAmount ? _value.feeAmount! : feeAmount,
      billingType: freezed == billingType ? _value.billingType! : billingType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZeroExFeeImpl with DiagnosticableTreeMixin implements _ZeroExFee {
  const _$ZeroExFeeImpl(
      {this.feeType = "",
      this.feeToken = "",
      this.feeAmount = "",
      this.billingType = ""});

  factory _$ZeroExFeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZeroExFeeImplFromJson(json);

  @override
  @JsonKey()
  final dynamic feeType;
  @override
  @JsonKey()
  final dynamic feeToken;
  @override
  @JsonKey()
  final dynamic feeAmount;
  @override
  @JsonKey()
  final dynamic billingType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZeroExFee(feeType: $feeType, feeToken: $feeToken, feeAmount: $feeAmount, billingType: $billingType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZeroExFee'))
      ..add(DiagnosticsProperty('feeType', feeType))
      ..add(DiagnosticsProperty('feeToken', feeToken))
      ..add(DiagnosticsProperty('feeAmount', feeAmount))
      ..add(DiagnosticsProperty('billingType', billingType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZeroExFeeImpl &&
            const DeepCollectionEquality().equals(other.feeType, feeType) &&
            const DeepCollectionEquality().equals(other.feeToken, feeToken) &&
            const DeepCollectionEquality().equals(other.feeAmount, feeAmount) &&
            const DeepCollectionEquality()
                .equals(other.billingType, billingType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feeType),
      const DeepCollectionEquality().hash(feeToken),
      const DeepCollectionEquality().hash(feeAmount),
      const DeepCollectionEquality().hash(billingType));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZeroExFeeImplCopyWith<_$ZeroExFeeImpl> get copyWith =>
      __$$ZeroExFeeImplCopyWithImpl<_$ZeroExFeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZeroExFeeImplToJson(
      this,
    );
  }
}

abstract class _ZeroExFee implements ZeroExFee {
  const factory _ZeroExFee(
      {final dynamic feeType,
      final dynamic feeToken,
      final dynamic feeAmount,
      final dynamic billingType}) = _$ZeroExFeeImpl;

  factory _ZeroExFee.fromJson(Map<String, dynamic> json) =
      _$ZeroExFeeImpl.fromJson;

  @override
  dynamic get feeType;
  @override
  dynamic get feeToken;
  @override
  dynamic get feeAmount;
  @override
  dynamic get billingType;
  @override
  @JsonKey(ignore: true)
  _$$ZeroExFeeImplCopyWith<_$ZeroExFeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
