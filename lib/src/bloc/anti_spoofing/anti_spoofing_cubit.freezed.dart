// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'anti_spoofing_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AntiSpoofingStateTearOff {
  const _$AntiSpoofingStateTearOff();

  _AntiSpoofingStateInitial initial() {
    return const _AntiSpoofingStateInitial();
  }

  _AntiSpoofingStateFailed failed() {
    return const _AntiSpoofingStateFailed();
  }

  _AntiSpoofingStateSuccess success(
      int laplacian, double antiSpoofing, bool isFraud) {
    return _AntiSpoofingStateSuccess(
      laplacian,
      antiSpoofing,
      isFraud,
    );
  }
}

/// @nodoc
const $AntiSpoofingState = _$AntiSpoofingStateTearOff();

/// @nodoc
mixin _$AntiSpoofingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failed,
    required TResult Function(int laplacian, double antiSpoofing, bool isFraud)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failed,
    TResult Function(int laplacian, double antiSpoofing, bool isFraud)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AntiSpoofingStateInitial value) initial,
    required TResult Function(_AntiSpoofingStateFailed value) failed,
    required TResult Function(_AntiSpoofingStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AntiSpoofingStateInitial value)? initial,
    TResult Function(_AntiSpoofingStateFailed value)? failed,
    TResult Function(_AntiSpoofingStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AntiSpoofingStateCopyWith<$Res> {
  factory $AntiSpoofingStateCopyWith(
          AntiSpoofingState value, $Res Function(AntiSpoofingState) then) =
      _$AntiSpoofingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AntiSpoofingStateCopyWithImpl<$Res>
    implements $AntiSpoofingStateCopyWith<$Res> {
  _$AntiSpoofingStateCopyWithImpl(this._value, this._then);

  final AntiSpoofingState _value;
  // ignore: unused_field
  final $Res Function(AntiSpoofingState) _then;
}

/// @nodoc
abstract class _$AntiSpoofingStateInitialCopyWith<$Res> {
  factory _$AntiSpoofingStateInitialCopyWith(_AntiSpoofingStateInitial value,
          $Res Function(_AntiSpoofingStateInitial) then) =
      __$AntiSpoofingStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$AntiSpoofingStateInitialCopyWithImpl<$Res>
    extends _$AntiSpoofingStateCopyWithImpl<$Res>
    implements _$AntiSpoofingStateInitialCopyWith<$Res> {
  __$AntiSpoofingStateInitialCopyWithImpl(_AntiSpoofingStateInitial _value,
      $Res Function(_AntiSpoofingStateInitial) _then)
      : super(_value, (v) => _then(v as _AntiSpoofingStateInitial));

  @override
  _AntiSpoofingStateInitial get _value =>
      super._value as _AntiSpoofingStateInitial;
}

/// @nodoc

class _$_AntiSpoofingStateInitial implements _AntiSpoofingStateInitial {
  const _$_AntiSpoofingStateInitial();

  @override
  String toString() {
    return 'AntiSpoofingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AntiSpoofingStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failed,
    required TResult Function(int laplacian, double antiSpoofing, bool isFraud)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failed,
    TResult Function(int laplacian, double antiSpoofing, bool isFraud)? success,
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
    required TResult Function(_AntiSpoofingStateInitial value) initial,
    required TResult Function(_AntiSpoofingStateFailed value) failed,
    required TResult Function(_AntiSpoofingStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AntiSpoofingStateInitial value)? initial,
    TResult Function(_AntiSpoofingStateFailed value)? failed,
    TResult Function(_AntiSpoofingStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AntiSpoofingStateInitial implements AntiSpoofingState {
  const factory _AntiSpoofingStateInitial() = _$_AntiSpoofingStateInitial;
}

/// @nodoc
abstract class _$AntiSpoofingStateFailedCopyWith<$Res> {
  factory _$AntiSpoofingStateFailedCopyWith(_AntiSpoofingStateFailed value,
          $Res Function(_AntiSpoofingStateFailed) then) =
      __$AntiSpoofingStateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AntiSpoofingStateFailedCopyWithImpl<$Res>
    extends _$AntiSpoofingStateCopyWithImpl<$Res>
    implements _$AntiSpoofingStateFailedCopyWith<$Res> {
  __$AntiSpoofingStateFailedCopyWithImpl(_AntiSpoofingStateFailed _value,
      $Res Function(_AntiSpoofingStateFailed) _then)
      : super(_value, (v) => _then(v as _AntiSpoofingStateFailed));

  @override
  _AntiSpoofingStateFailed get _value =>
      super._value as _AntiSpoofingStateFailed;
}

/// @nodoc

class _$_AntiSpoofingStateFailed implements _AntiSpoofingStateFailed {
  const _$_AntiSpoofingStateFailed();

  @override
  String toString() {
    return 'AntiSpoofingState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AntiSpoofingStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failed,
    required TResult Function(int laplacian, double antiSpoofing, bool isFraud)
        success,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failed,
    TResult Function(int laplacian, double antiSpoofing, bool isFraud)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AntiSpoofingStateInitial value) initial,
    required TResult Function(_AntiSpoofingStateFailed value) failed,
    required TResult Function(_AntiSpoofingStateSuccess value) success,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AntiSpoofingStateInitial value)? initial,
    TResult Function(_AntiSpoofingStateFailed value)? failed,
    TResult Function(_AntiSpoofingStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _AntiSpoofingStateFailed implements AntiSpoofingState {
  const factory _AntiSpoofingStateFailed() = _$_AntiSpoofingStateFailed;
}

/// @nodoc
abstract class _$AntiSpoofingStateSuccessCopyWith<$Res> {
  factory _$AntiSpoofingStateSuccessCopyWith(_AntiSpoofingStateSuccess value,
          $Res Function(_AntiSpoofingStateSuccess) then) =
      __$AntiSpoofingStateSuccessCopyWithImpl<$Res>;
  $Res call({int laplacian, double antiSpoofing, bool isFraud});
}

/// @nodoc
class __$AntiSpoofingStateSuccessCopyWithImpl<$Res>
    extends _$AntiSpoofingStateCopyWithImpl<$Res>
    implements _$AntiSpoofingStateSuccessCopyWith<$Res> {
  __$AntiSpoofingStateSuccessCopyWithImpl(_AntiSpoofingStateSuccess _value,
      $Res Function(_AntiSpoofingStateSuccess) _then)
      : super(_value, (v) => _then(v as _AntiSpoofingStateSuccess));

  @override
  _AntiSpoofingStateSuccess get _value =>
      super._value as _AntiSpoofingStateSuccess;

  @override
  $Res call({
    Object? laplacian = freezed,
    Object? antiSpoofing = freezed,
    Object? isFraud = freezed,
  }) {
    return _then(_AntiSpoofingStateSuccess(
      laplacian == freezed
          ? _value.laplacian
          : laplacian // ignore: cast_nullable_to_non_nullable
              as int,
      antiSpoofing == freezed
          ? _value.antiSpoofing
          : antiSpoofing // ignore: cast_nullable_to_non_nullable
              as double,
      isFraud == freezed
          ? _value.isFraud
          : isFraud // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AntiSpoofingStateSuccess implements _AntiSpoofingStateSuccess {
  const _$_AntiSpoofingStateSuccess(
      this.laplacian, this.antiSpoofing, this.isFraud);

  @override
  final int laplacian;
  @override
  final double antiSpoofing;
  @override
  final bool isFraud;

  @override
  String toString() {
    return 'AntiSpoofingState.success(laplacian: $laplacian, antiSpoofing: $antiSpoofing, isFraud: $isFraud)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AntiSpoofingStateSuccess &&
            (identical(other.laplacian, laplacian) ||
                const DeepCollectionEquality()
                    .equals(other.laplacian, laplacian)) &&
            (identical(other.antiSpoofing, antiSpoofing) ||
                const DeepCollectionEquality()
                    .equals(other.antiSpoofing, antiSpoofing)) &&
            (identical(other.isFraud, isFraud) ||
                const DeepCollectionEquality().equals(other.isFraud, isFraud)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(laplacian) ^
      const DeepCollectionEquality().hash(antiSpoofing) ^
      const DeepCollectionEquality().hash(isFraud);

  @JsonKey(ignore: true)
  @override
  _$AntiSpoofingStateSuccessCopyWith<_AntiSpoofingStateSuccess> get copyWith =>
      __$AntiSpoofingStateSuccessCopyWithImpl<_AntiSpoofingStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failed,
    required TResult Function(int laplacian, double antiSpoofing, bool isFraud)
        success,
  }) {
    return success(laplacian, antiSpoofing, isFraud);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failed,
    TResult Function(int laplacian, double antiSpoofing, bool isFraud)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(laplacian, antiSpoofing, isFraud);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AntiSpoofingStateInitial value) initial,
    required TResult Function(_AntiSpoofingStateFailed value) failed,
    required TResult Function(_AntiSpoofingStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AntiSpoofingStateInitial value)? initial,
    TResult Function(_AntiSpoofingStateFailed value)? failed,
    TResult Function(_AntiSpoofingStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AntiSpoofingStateSuccess implements AntiSpoofingState {
  const factory _AntiSpoofingStateSuccess(
          int laplacian, double antiSpoofing, bool isFraud) =
      _$_AntiSpoofingStateSuccess;

  int get laplacian => throw _privateConstructorUsedError;
  double get antiSpoofing => throw _privateConstructorUsedError;
  bool get isFraud => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AntiSpoofingStateSuccessCopyWith<_AntiSpoofingStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
