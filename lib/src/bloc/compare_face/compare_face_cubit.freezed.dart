// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'compare_face_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CompareFaceStateTearOff {
  const _$CompareFaceStateTearOff();

  _CompareFaceStateInitial initial() {
    return const _CompareFaceStateInitial();
  }

  _CompareFaceStateInProgress inProgress() {
    return const _CompareFaceStateInProgress();
  }

  _CompareFaceStateFailed failed() {
    return const _CompareFaceStateFailed();
  }

  _CompareFaceStateSuccess success(List<ComparedFace> comparedFaceList) {
    return _CompareFaceStateSuccess(
      comparedFaceList,
    );
  }
}

/// @nodoc
const $CompareFaceState = _$CompareFaceStateTearOff();

/// @nodoc
mixin _$CompareFaceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() failed,
    required TResult Function(List<ComparedFace> comparedFaceList) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failed,
    TResult Function(List<ComparedFace> comparedFaceList)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompareFaceStateInitial value) initial,
    required TResult Function(_CompareFaceStateInProgress value) inProgress,
    required TResult Function(_CompareFaceStateFailed value) failed,
    required TResult Function(_CompareFaceStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompareFaceStateInitial value)? initial,
    TResult Function(_CompareFaceStateInProgress value)? inProgress,
    TResult Function(_CompareFaceStateFailed value)? failed,
    TResult Function(_CompareFaceStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompareFaceStateCopyWith<$Res> {
  factory $CompareFaceStateCopyWith(
          CompareFaceState value, $Res Function(CompareFaceState) then) =
      _$CompareFaceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompareFaceStateCopyWithImpl<$Res>
    implements $CompareFaceStateCopyWith<$Res> {
  _$CompareFaceStateCopyWithImpl(this._value, this._then);

  final CompareFaceState _value;
  // ignore: unused_field
  final $Res Function(CompareFaceState) _then;
}

/// @nodoc
abstract class _$CompareFaceStateInitialCopyWith<$Res> {
  factory _$CompareFaceStateInitialCopyWith(_CompareFaceStateInitial value,
          $Res Function(_CompareFaceStateInitial) then) =
      __$CompareFaceStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$CompareFaceStateInitialCopyWithImpl<$Res>
    extends _$CompareFaceStateCopyWithImpl<$Res>
    implements _$CompareFaceStateInitialCopyWith<$Res> {
  __$CompareFaceStateInitialCopyWithImpl(_CompareFaceStateInitial _value,
      $Res Function(_CompareFaceStateInitial) _then)
      : super(_value, (v) => _then(v as _CompareFaceStateInitial));

  @override
  _CompareFaceStateInitial get _value =>
      super._value as _CompareFaceStateInitial;
}

/// @nodoc

class _$_CompareFaceStateInitial implements _CompareFaceStateInitial {
  const _$_CompareFaceStateInitial();

  @override
  String toString() {
    return 'CompareFaceState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CompareFaceStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() failed,
    required TResult Function(List<ComparedFace> comparedFaceList) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failed,
    TResult Function(List<ComparedFace> comparedFaceList)? success,
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
    required TResult Function(_CompareFaceStateInitial value) initial,
    required TResult Function(_CompareFaceStateInProgress value) inProgress,
    required TResult Function(_CompareFaceStateFailed value) failed,
    required TResult Function(_CompareFaceStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompareFaceStateInitial value)? initial,
    TResult Function(_CompareFaceStateInProgress value)? inProgress,
    TResult Function(_CompareFaceStateFailed value)? failed,
    TResult Function(_CompareFaceStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CompareFaceStateInitial implements CompareFaceState {
  const factory _CompareFaceStateInitial() = _$_CompareFaceStateInitial;
}

/// @nodoc
abstract class _$CompareFaceStateInProgressCopyWith<$Res> {
  factory _$CompareFaceStateInProgressCopyWith(
          _CompareFaceStateInProgress value,
          $Res Function(_CompareFaceStateInProgress) then) =
      __$CompareFaceStateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$CompareFaceStateInProgressCopyWithImpl<$Res>
    extends _$CompareFaceStateCopyWithImpl<$Res>
    implements _$CompareFaceStateInProgressCopyWith<$Res> {
  __$CompareFaceStateInProgressCopyWithImpl(_CompareFaceStateInProgress _value,
      $Res Function(_CompareFaceStateInProgress) _then)
      : super(_value, (v) => _then(v as _CompareFaceStateInProgress));

  @override
  _CompareFaceStateInProgress get _value =>
      super._value as _CompareFaceStateInProgress;
}

/// @nodoc

class _$_CompareFaceStateInProgress implements _CompareFaceStateInProgress {
  const _$_CompareFaceStateInProgress();

  @override
  String toString() {
    return 'CompareFaceState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CompareFaceStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() failed,
    required TResult Function(List<ComparedFace> comparedFaceList) success,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failed,
    TResult Function(List<ComparedFace> comparedFaceList)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompareFaceStateInitial value) initial,
    required TResult Function(_CompareFaceStateInProgress value) inProgress,
    required TResult Function(_CompareFaceStateFailed value) failed,
    required TResult Function(_CompareFaceStateSuccess value) success,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompareFaceStateInitial value)? initial,
    TResult Function(_CompareFaceStateInProgress value)? inProgress,
    TResult Function(_CompareFaceStateFailed value)? failed,
    TResult Function(_CompareFaceStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _CompareFaceStateInProgress implements CompareFaceState {
  const factory _CompareFaceStateInProgress() = _$_CompareFaceStateInProgress;
}

/// @nodoc
abstract class _$CompareFaceStateFailedCopyWith<$Res> {
  factory _$CompareFaceStateFailedCopyWith(_CompareFaceStateFailed value,
          $Res Function(_CompareFaceStateFailed) then) =
      __$CompareFaceStateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CompareFaceStateFailedCopyWithImpl<$Res>
    extends _$CompareFaceStateCopyWithImpl<$Res>
    implements _$CompareFaceStateFailedCopyWith<$Res> {
  __$CompareFaceStateFailedCopyWithImpl(_CompareFaceStateFailed _value,
      $Res Function(_CompareFaceStateFailed) _then)
      : super(_value, (v) => _then(v as _CompareFaceStateFailed));

  @override
  _CompareFaceStateFailed get _value => super._value as _CompareFaceStateFailed;
}

/// @nodoc

class _$_CompareFaceStateFailed implements _CompareFaceStateFailed {
  const _$_CompareFaceStateFailed();

  @override
  String toString() {
    return 'CompareFaceState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CompareFaceStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() failed,
    required TResult Function(List<ComparedFace> comparedFaceList) success,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failed,
    TResult Function(List<ComparedFace> comparedFaceList)? success,
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
    required TResult Function(_CompareFaceStateInitial value) initial,
    required TResult Function(_CompareFaceStateInProgress value) inProgress,
    required TResult Function(_CompareFaceStateFailed value) failed,
    required TResult Function(_CompareFaceStateSuccess value) success,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompareFaceStateInitial value)? initial,
    TResult Function(_CompareFaceStateInProgress value)? inProgress,
    TResult Function(_CompareFaceStateFailed value)? failed,
    TResult Function(_CompareFaceStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _CompareFaceStateFailed implements CompareFaceState {
  const factory _CompareFaceStateFailed() = _$_CompareFaceStateFailed;
}

/// @nodoc
abstract class _$CompareFaceStateSuccessCopyWith<$Res> {
  factory _$CompareFaceStateSuccessCopyWith(_CompareFaceStateSuccess value,
          $Res Function(_CompareFaceStateSuccess) then) =
      __$CompareFaceStateSuccessCopyWithImpl<$Res>;
  $Res call({List<ComparedFace> comparedFaceList});
}

/// @nodoc
class __$CompareFaceStateSuccessCopyWithImpl<$Res>
    extends _$CompareFaceStateCopyWithImpl<$Res>
    implements _$CompareFaceStateSuccessCopyWith<$Res> {
  __$CompareFaceStateSuccessCopyWithImpl(_CompareFaceStateSuccess _value,
      $Res Function(_CompareFaceStateSuccess) _then)
      : super(_value, (v) => _then(v as _CompareFaceStateSuccess));

  @override
  _CompareFaceStateSuccess get _value =>
      super._value as _CompareFaceStateSuccess;

  @override
  $Res call({
    Object? comparedFaceList = freezed,
  }) {
    return _then(_CompareFaceStateSuccess(
      comparedFaceList == freezed
          ? _value.comparedFaceList
          : comparedFaceList // ignore: cast_nullable_to_non_nullable
              as List<ComparedFace>,
    ));
  }
}

/// @nodoc

class _$_CompareFaceStateSuccess implements _CompareFaceStateSuccess {
  const _$_CompareFaceStateSuccess(this.comparedFaceList);

  @override
  final List<ComparedFace> comparedFaceList;

  @override
  String toString() {
    return 'CompareFaceState.success(comparedFaceList: $comparedFaceList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompareFaceStateSuccess &&
            (identical(other.comparedFaceList, comparedFaceList) ||
                const DeepCollectionEquality()
                    .equals(other.comparedFaceList, comparedFaceList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(comparedFaceList);

  @JsonKey(ignore: true)
  @override
  _$CompareFaceStateSuccessCopyWith<_CompareFaceStateSuccess> get copyWith =>
      __$CompareFaceStateSuccessCopyWithImpl<_CompareFaceStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() failed,
    required TResult Function(List<ComparedFace> comparedFaceList) success,
  }) {
    return success(comparedFaceList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failed,
    TResult Function(List<ComparedFace> comparedFaceList)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(comparedFaceList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompareFaceStateInitial value) initial,
    required TResult Function(_CompareFaceStateInProgress value) inProgress,
    required TResult Function(_CompareFaceStateFailed value) failed,
    required TResult Function(_CompareFaceStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompareFaceStateInitial value)? initial,
    TResult Function(_CompareFaceStateInProgress value)? inProgress,
    TResult Function(_CompareFaceStateFailed value)? failed,
    TResult Function(_CompareFaceStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CompareFaceStateSuccess implements CompareFaceState {
  const factory _CompareFaceStateSuccess(List<ComparedFace> comparedFaceList) =
      _$_CompareFaceStateSuccess;

  List<ComparedFace> get comparedFaceList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CompareFaceStateSuccessCopyWith<_CompareFaceStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
