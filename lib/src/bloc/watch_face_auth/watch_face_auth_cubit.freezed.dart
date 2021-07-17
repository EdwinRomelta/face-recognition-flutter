// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'watch_face_auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WatchFaceAuthStateTearOff {
  const _$WatchFaceAuthStateTearOff();

  _WatchFaceAuthStateInitial initial() {
    return const _WatchFaceAuthStateInitial();
  }

  WatchFaceAuthStateSuccess success(List<FaceAuth> faceList) {
    return WatchFaceAuthStateSuccess(
      faceList,
    );
  }
}

/// @nodoc
const $WatchFaceAuthState = _$WatchFaceAuthStateTearOff();

/// @nodoc
mixin _$WatchFaceAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FaceAuth> faceList) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FaceAuth> faceList)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFaceAuthStateInitial value) initial,
    required TResult Function(WatchFaceAuthStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFaceAuthStateInitial value)? initial,
    TResult Function(WatchFaceAuthStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchFaceAuthStateCopyWith<$Res> {
  factory $WatchFaceAuthStateCopyWith(
          WatchFaceAuthState value, $Res Function(WatchFaceAuthState) then) =
      _$WatchFaceAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchFaceAuthStateCopyWithImpl<$Res>
    implements $WatchFaceAuthStateCopyWith<$Res> {
  _$WatchFaceAuthStateCopyWithImpl(this._value, this._then);

  final WatchFaceAuthState _value;
  // ignore: unused_field
  final $Res Function(WatchFaceAuthState) _then;
}

/// @nodoc
abstract class _$WatchFaceAuthStateInitialCopyWith<$Res> {
  factory _$WatchFaceAuthStateInitialCopyWith(_WatchFaceAuthStateInitial value,
          $Res Function(_WatchFaceAuthStateInitial) then) =
      __$WatchFaceAuthStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchFaceAuthStateInitialCopyWithImpl<$Res>
    extends _$WatchFaceAuthStateCopyWithImpl<$Res>
    implements _$WatchFaceAuthStateInitialCopyWith<$Res> {
  __$WatchFaceAuthStateInitialCopyWithImpl(_WatchFaceAuthStateInitial _value,
      $Res Function(_WatchFaceAuthStateInitial) _then)
      : super(_value, (v) => _then(v as _WatchFaceAuthStateInitial));

  @override
  _WatchFaceAuthStateInitial get _value =>
      super._value as _WatchFaceAuthStateInitial;
}

/// @nodoc

class _$_WatchFaceAuthStateInitial implements _WatchFaceAuthStateInitial {
  const _$_WatchFaceAuthStateInitial();

  @override
  String toString() {
    return 'WatchFaceAuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchFaceAuthStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FaceAuth> faceList) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FaceAuth> faceList)? success,
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
    required TResult Function(_WatchFaceAuthStateInitial value) initial,
    required TResult Function(WatchFaceAuthStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFaceAuthStateInitial value)? initial,
    TResult Function(WatchFaceAuthStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WatchFaceAuthStateInitial implements WatchFaceAuthState {
  const factory _WatchFaceAuthStateInitial() = _$_WatchFaceAuthStateInitial;
}

/// @nodoc
abstract class $WatchFaceAuthStateSuccessCopyWith<$Res> {
  factory $WatchFaceAuthStateSuccessCopyWith(WatchFaceAuthStateSuccess value,
          $Res Function(WatchFaceAuthStateSuccess) then) =
      _$WatchFaceAuthStateSuccessCopyWithImpl<$Res>;
  $Res call({List<FaceAuth> faceList});
}

/// @nodoc
class _$WatchFaceAuthStateSuccessCopyWithImpl<$Res>
    extends _$WatchFaceAuthStateCopyWithImpl<$Res>
    implements $WatchFaceAuthStateSuccessCopyWith<$Res> {
  _$WatchFaceAuthStateSuccessCopyWithImpl(WatchFaceAuthStateSuccess _value,
      $Res Function(WatchFaceAuthStateSuccess) _then)
      : super(_value, (v) => _then(v as WatchFaceAuthStateSuccess));

  @override
  WatchFaceAuthStateSuccess get _value =>
      super._value as WatchFaceAuthStateSuccess;

  @override
  $Res call({
    Object? faceList = freezed,
  }) {
    return _then(WatchFaceAuthStateSuccess(
      faceList == freezed
          ? _value.faceList
          : faceList // ignore: cast_nullable_to_non_nullable
              as List<FaceAuth>,
    ));
  }
}

/// @nodoc

class _$WatchFaceAuthStateSuccess implements WatchFaceAuthStateSuccess {
  const _$WatchFaceAuthStateSuccess(this.faceList);

  @override
  final List<FaceAuth> faceList;

  @override
  String toString() {
    return 'WatchFaceAuthState.success(faceList: $faceList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WatchFaceAuthStateSuccess &&
            (identical(other.faceList, faceList) ||
                const DeepCollectionEquality()
                    .equals(other.faceList, faceList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(faceList);

  @JsonKey(ignore: true)
  @override
  $WatchFaceAuthStateSuccessCopyWith<WatchFaceAuthStateSuccess> get copyWith =>
      _$WatchFaceAuthStateSuccessCopyWithImpl<WatchFaceAuthStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FaceAuth> faceList) success,
  }) {
    return success(faceList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FaceAuth> faceList)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(faceList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFaceAuthStateInitial value) initial,
    required TResult Function(WatchFaceAuthStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFaceAuthStateInitial value)? initial,
    TResult Function(WatchFaceAuthStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class WatchFaceAuthStateSuccess implements WatchFaceAuthState {
  const factory WatchFaceAuthStateSuccess(List<FaceAuth> faceList) =
      _$WatchFaceAuthStateSuccess;

  List<FaceAuth> get faceList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WatchFaceAuthStateSuccessCopyWith<WatchFaceAuthStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
