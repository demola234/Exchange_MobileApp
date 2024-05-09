// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
    required TResult Function(String message) notificationFailure,
    required TResult Function(String message) accessDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
    TResult? Function(String message)? notificationFailure,
    TResult? Function(String message)? accessDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    TResult Function(String message)? notificationFailure,
    TResult Function(String message)? accessDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
    required TResult Function(_NotificationFailure value) notificationFailure,
    required TResult Function(_AccessDeniedFailure value) accessDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
    TResult? Function(_NotificationFailure value)? notificationFailure,
    TResult? Function(_AccessDeniedFailure value)? accessDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    TResult Function(_NotificationFailure value)? notificationFailure,
    TResult Function(_AccessDeniedFailure value)? accessDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
    required TResult Function(String message) notificationFailure,
    required TResult Function(String message) accessDenied,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
    TResult? Function(String message)? notificationFailure,
    TResult? Function(String message)? accessDenied,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    TResult Function(String message)? notificationFailure,
    TResult Function(String message)? accessDenied,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
    required TResult Function(_NotificationFailure value) notificationFailure,
    required TResult Function(_AccessDeniedFailure value) accessDenied,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
    TResult? Function(_NotificationFailure value)? notificationFailure,
    TResult? Function(_AccessDeniedFailure value)? accessDenied,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    TResult Function(_NotificationFailure value)? notificationFailure,
    TResult Function(_AccessDeniedFailure value)? accessDenied,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements Failure {
  const factory _Failure(final String message) = _$FailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NotFoundFailureImplCopyWith(_$NotFoundFailureImpl value,
          $Res Function(_$NotFoundFailureImpl) then) =
      __$$NotFoundFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotFoundFailureImpl>
    implements _$$NotFoundFailureImplCopyWith<$Res> {
  __$$NotFoundFailureImplCopyWithImpl(
      _$NotFoundFailureImpl _value, $Res Function(_$NotFoundFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotFoundFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotFoundFailureImpl implements _NotFoundFailure {
  const _$NotFoundFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.notFoundFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      __$$NotFoundFailureImplCopyWithImpl<_$NotFoundFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
    required TResult Function(String message) notificationFailure,
    required TResult Function(String message) accessDenied,
  }) {
    return notFoundFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
    TResult? Function(String message)? notificationFailure,
    TResult? Function(String message)? accessDenied,
  }) {
    return notFoundFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    TResult Function(String message)? notificationFailure,
    TResult Function(String message)? accessDenied,
    required TResult orElse(),
  }) {
    if (notFoundFailure != null) {
      return notFoundFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
    required TResult Function(_NotificationFailure value) notificationFailure,
    required TResult Function(_AccessDeniedFailure value) accessDenied,
  }) {
    return notFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
    TResult? Function(_NotificationFailure value)? notificationFailure,
    TResult? Function(_AccessDeniedFailure value)? accessDenied,
  }) {
    return notFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    TResult Function(_NotificationFailure value)? notificationFailure,
    TResult Function(_AccessDeniedFailure value)? accessDenied,
    required TResult orElse(),
  }) {
    if (notFoundFailure != null) {
      return notFoundFailure(this);
    }
    return orElse();
  }
}

abstract class _NotFoundFailure implements Failure {
  const factory _NotFoundFailure(final String message) = _$NotFoundFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ErrorFailureImplCopyWith(
          _$ErrorFailureImpl value, $Res Function(_$ErrorFailureImpl) then) =
      __$$ErrorFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ErrorFailureImpl>
    implements _$$ErrorFailureImplCopyWith<$Res> {
  __$$ErrorFailureImplCopyWithImpl(
      _$ErrorFailureImpl _value, $Res Function(_$ErrorFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorFailureImpl implements _ErrorFailure {
  const _$ErrorFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.errorFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorFailureImplCopyWith<_$ErrorFailureImpl> get copyWith =>
      __$$ErrorFailureImplCopyWithImpl<_$ErrorFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
    required TResult Function(String message) notificationFailure,
    required TResult Function(String message) accessDenied,
  }) {
    return errorFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
    TResult? Function(String message)? notificationFailure,
    TResult? Function(String message)? accessDenied,
  }) {
    return errorFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    TResult Function(String message)? notificationFailure,
    TResult Function(String message)? accessDenied,
    required TResult orElse(),
  }) {
    if (errorFailure != null) {
      return errorFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
    required TResult Function(_NotificationFailure value) notificationFailure,
    required TResult Function(_AccessDeniedFailure value) accessDenied,
  }) {
    return errorFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
    TResult? Function(_NotificationFailure value)? notificationFailure,
    TResult? Function(_AccessDeniedFailure value)? accessDenied,
  }) {
    return errorFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    TResult Function(_NotificationFailure value)? notificationFailure,
    TResult Function(_AccessDeniedFailure value)? accessDenied,
    required TResult orElse(),
  }) {
    if (errorFailure != null) {
      return errorFailure(this);
    }
    return orElse();
  }
}

abstract class _ErrorFailure implements Failure {
  const factory _ErrorFailure(final String message) = _$ErrorFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorFailureImplCopyWith<_$ErrorFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NotificationFailureImplCopyWith(_$NotificationFailureImpl value,
          $Res Function(_$NotificationFailureImpl) then) =
      __$$NotificationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotificationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotificationFailureImpl>
    implements _$$NotificationFailureImplCopyWith<$Res> {
  __$$NotificationFailureImplCopyWithImpl(_$NotificationFailureImpl _value,
      $Res Function(_$NotificationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotificationFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationFailureImpl implements _NotificationFailure {
  const _$NotificationFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.notificationFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationFailureImplCopyWith<_$NotificationFailureImpl> get copyWith =>
      __$$NotificationFailureImplCopyWithImpl<_$NotificationFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
    required TResult Function(String message) notificationFailure,
    required TResult Function(String message) accessDenied,
  }) {
    return notificationFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
    TResult? Function(String message)? notificationFailure,
    TResult? Function(String message)? accessDenied,
  }) {
    return notificationFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    TResult Function(String message)? notificationFailure,
    TResult Function(String message)? accessDenied,
    required TResult orElse(),
  }) {
    if (notificationFailure != null) {
      return notificationFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
    required TResult Function(_NotificationFailure value) notificationFailure,
    required TResult Function(_AccessDeniedFailure value) accessDenied,
  }) {
    return notificationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
    TResult? Function(_NotificationFailure value)? notificationFailure,
    TResult? Function(_AccessDeniedFailure value)? accessDenied,
  }) {
    return notificationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    TResult Function(_NotificationFailure value)? notificationFailure,
    TResult Function(_AccessDeniedFailure value)? accessDenied,
    required TResult orElse(),
  }) {
    if (notificationFailure != null) {
      return notificationFailure(this);
    }
    return orElse();
  }
}

abstract class _NotificationFailure implements Failure {
  const factory _NotificationFailure(final String message) =
      _$NotificationFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NotificationFailureImplCopyWith<_$NotificationFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccessDeniedFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$AccessDeniedFailureImplCopyWith(_$AccessDeniedFailureImpl value,
          $Res Function(_$AccessDeniedFailureImpl) then) =
      __$$AccessDeniedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AccessDeniedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AccessDeniedFailureImpl>
    implements _$$AccessDeniedFailureImplCopyWith<$Res> {
  __$$AccessDeniedFailureImplCopyWithImpl(_$AccessDeniedFailureImpl _value,
      $Res Function(_$AccessDeniedFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AccessDeniedFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AccessDeniedFailureImpl implements _AccessDeniedFailure {
  const _$AccessDeniedFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.accessDenied(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessDeniedFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessDeniedFailureImplCopyWith<_$AccessDeniedFailureImpl> get copyWith =>
      __$$AccessDeniedFailureImplCopyWithImpl<_$AccessDeniedFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
    required TResult Function(String message) notificationFailure,
    required TResult Function(String message) accessDenied,
  }) {
    return accessDenied(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
    TResult? Function(String message)? notificationFailure,
    TResult? Function(String message)? accessDenied,
  }) {
    return accessDenied?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    TResult Function(String message)? notificationFailure,
    TResult Function(String message)? accessDenied,
    required TResult orElse(),
  }) {
    if (accessDenied != null) {
      return accessDenied(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
    required TResult Function(_NotificationFailure value) notificationFailure,
    required TResult Function(_AccessDeniedFailure value) accessDenied,
  }) {
    return accessDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
    TResult? Function(_NotificationFailure value)? notificationFailure,
    TResult? Function(_AccessDeniedFailure value)? accessDenied,
  }) {
    return accessDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    TResult Function(_NotificationFailure value)? notificationFailure,
    TResult Function(_AccessDeniedFailure value)? accessDenied,
    required TResult orElse(),
  }) {
    if (accessDenied != null) {
      return accessDenied(this);
    }
    return orElse();
  }
}

abstract class _AccessDeniedFailure implements Failure {
  const factory _AccessDeniedFailure(final String message) =
      _$AccessDeniedFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AccessDeniedFailureImplCopyWith<_$AccessDeniedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
