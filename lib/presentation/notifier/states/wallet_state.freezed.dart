// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() generatingSeedPhrase,
    required TResult Function(GeneratedWallet generatedWallet)
        generatedSeedPhrase,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? generatingSeedPhrase,
    TResult? Function(GeneratedWallet generatedWallet)? generatedSeedPhrase,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? generatingSeedPhrase,
    TResult Function(GeneratedWallet generatedWallet)? generatedSeedPhrase,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) generatingSeedPhrase,
    required TResult Function(_GeneratedWallet value) generatedSeedPhrase,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? generatingSeedPhrase,
    TResult? Function(_GeneratedWallet value)? generatedSeedPhrase,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? generatingSeedPhrase,
    TResult Function(_GeneratedWallet value)? generatedSeedPhrase,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WalletState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() generatingSeedPhrase,
    required TResult Function(GeneratedWallet generatedWallet)
        generatedSeedPhrase,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? generatingSeedPhrase,
    TResult? Function(GeneratedWallet generatedWallet)? generatedSeedPhrase,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? generatingSeedPhrase,
    TResult Function(GeneratedWallet generatedWallet)? generatedSeedPhrase,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) generatingSeedPhrase,
    required TResult Function(_GeneratedWallet value) generatedSeedPhrase,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? generatingSeedPhrase,
    TResult? Function(_GeneratedWallet value)? generatedSeedPhrase,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? generatingSeedPhrase,
    TResult Function(_GeneratedWallet value)? generatedSeedPhrase,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WalletState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'WalletState.generatingSeedPhrase()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() generatingSeedPhrase,
    required TResult Function(GeneratedWallet generatedWallet)
        generatedSeedPhrase,
    required TResult Function(String error) error,
  }) {
    return generatingSeedPhrase();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? generatingSeedPhrase,
    TResult? Function(GeneratedWallet generatedWallet)? generatedSeedPhrase,
    TResult? Function(String error)? error,
  }) {
    return generatingSeedPhrase?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? generatingSeedPhrase,
    TResult Function(GeneratedWallet generatedWallet)? generatedSeedPhrase,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (generatingSeedPhrase != null) {
      return generatingSeedPhrase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) generatingSeedPhrase,
    required TResult Function(_GeneratedWallet value) generatedSeedPhrase,
    required TResult Function(_Error value) error,
  }) {
    return generatingSeedPhrase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? generatingSeedPhrase,
    TResult? Function(_GeneratedWallet value)? generatedSeedPhrase,
    TResult? Function(_Error value)? error,
  }) {
    return generatingSeedPhrase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? generatingSeedPhrase,
    TResult Function(_GeneratedWallet value)? generatedSeedPhrase,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (generatingSeedPhrase != null) {
      return generatingSeedPhrase(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WalletState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$GeneratedWalletImplCopyWith<$Res> {
  factory _$$GeneratedWalletImplCopyWith(_$GeneratedWalletImpl value,
          $Res Function(_$GeneratedWalletImpl) then) =
      __$$GeneratedWalletImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GeneratedWallet generatedWallet});
}

/// @nodoc
class __$$GeneratedWalletImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$GeneratedWalletImpl>
    implements _$$GeneratedWalletImplCopyWith<$Res> {
  __$$GeneratedWalletImplCopyWithImpl(
      _$GeneratedWalletImpl _value, $Res Function(_$GeneratedWalletImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generatedWallet = null,
  }) {
    return _then(_$GeneratedWalletImpl(
      generatedWallet: null == generatedWallet
          ? _value.generatedWallet
          : generatedWallet // ignore: cast_nullable_to_non_nullable
              as GeneratedWallet,
    ));
  }
}

/// @nodoc

class _$GeneratedWalletImpl implements _GeneratedWallet {
  const _$GeneratedWalletImpl({required this.generatedWallet});

  @override
  final GeneratedWallet generatedWallet;

  @override
  String toString() {
    return 'WalletState.generatedSeedPhrase(generatedWallet: $generatedWallet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneratedWalletImpl &&
            (identical(other.generatedWallet, generatedWallet) ||
                other.generatedWallet == generatedWallet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generatedWallet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneratedWalletImplCopyWith<_$GeneratedWalletImpl> get copyWith =>
      __$$GeneratedWalletImplCopyWithImpl<_$GeneratedWalletImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() generatingSeedPhrase,
    required TResult Function(GeneratedWallet generatedWallet)
        generatedSeedPhrase,
    required TResult Function(String error) error,
  }) {
    return generatedSeedPhrase(generatedWallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? generatingSeedPhrase,
    TResult? Function(GeneratedWallet generatedWallet)? generatedSeedPhrase,
    TResult? Function(String error)? error,
  }) {
    return generatedSeedPhrase?.call(generatedWallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? generatingSeedPhrase,
    TResult Function(GeneratedWallet generatedWallet)? generatedSeedPhrase,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (generatedSeedPhrase != null) {
      return generatedSeedPhrase(generatedWallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) generatingSeedPhrase,
    required TResult Function(_GeneratedWallet value) generatedSeedPhrase,
    required TResult Function(_Error value) error,
  }) {
    return generatedSeedPhrase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? generatingSeedPhrase,
    TResult? Function(_GeneratedWallet value)? generatedSeedPhrase,
    TResult? Function(_Error value)? error,
  }) {
    return generatedSeedPhrase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? generatingSeedPhrase,
    TResult Function(_GeneratedWallet value)? generatedSeedPhrase,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (generatedSeedPhrase != null) {
      return generatedSeedPhrase(this);
    }
    return orElse();
  }
}

abstract class _GeneratedWallet implements WalletState {
  const factory _GeneratedWallet(
      {required final GeneratedWallet generatedWallet}) = _$GeneratedWalletImpl;

  GeneratedWallet get generatedWallet;
  @JsonKey(ignore: true)
  _$$GeneratedWalletImplCopyWith<_$GeneratedWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'WalletState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() generatingSeedPhrase,
    required TResult Function(GeneratedWallet generatedWallet)
        generatedSeedPhrase,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? generatingSeedPhrase,
    TResult? Function(GeneratedWallet generatedWallet)? generatedSeedPhrase,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? generatingSeedPhrase,
    TResult Function(GeneratedWallet generatedWallet)? generatedSeedPhrase,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) generatingSeedPhrase,
    required TResult Function(_GeneratedWallet value) generatedSeedPhrase,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? generatingSeedPhrase,
    TResult? Function(_GeneratedWallet value)? generatedSeedPhrase,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? generatingSeedPhrase,
    TResult Function(_GeneratedWallet value)? generatedSeedPhrase,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements WalletState {
  const factory _Error({required final String error}) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
