// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'face_processing_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FaceProcessingStateTearOff {
  const _$FaceProcessingStateTearOff();

  _FaceProcessingInitial initial() {
    return const _FaceProcessingInitial();
  }

  FaceProcessingFound faceFound(List<DetectedFace> faceList) {
    return FaceProcessingFound(
      faceList,
    );
  }
}

/// @nodoc
const $FaceProcessingState = _$FaceProcessingStateTearOff();

/// @nodoc
mixin _$FaceProcessingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<DetectedFace> faceList) faceFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<DetectedFace> faceList)? faceFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FaceProcessingInitial value) initial,
    required TResult Function(FaceProcessingFound value) faceFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaceProcessingInitial value)? initial,
    TResult Function(FaceProcessingFound value)? faceFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceProcessingStateCopyWith<$Res> {
  factory $FaceProcessingStateCopyWith(
          FaceProcessingState value, $Res Function(FaceProcessingState) then) =
      _$FaceProcessingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FaceProcessingStateCopyWithImpl<$Res>
    implements $FaceProcessingStateCopyWith<$Res> {
  _$FaceProcessingStateCopyWithImpl(this._value, this._then);

  final FaceProcessingState _value;
  // ignore: unused_field
  final $Res Function(FaceProcessingState) _then;
}

/// @nodoc
abstract class _$FaceProcessingInitialCopyWith<$Res> {
  factory _$FaceProcessingInitialCopyWith(_FaceProcessingInitial value,
          $Res Function(_FaceProcessingInitial) then) =
      __$FaceProcessingInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$FaceProcessingInitialCopyWithImpl<$Res>
    extends _$FaceProcessingStateCopyWithImpl<$Res>
    implements _$FaceProcessingInitialCopyWith<$Res> {
  __$FaceProcessingInitialCopyWithImpl(_FaceProcessingInitial _value,
      $Res Function(_FaceProcessingInitial) _then)
      : super(_value, (v) => _then(v as _FaceProcessingInitial));

  @override
  _FaceProcessingInitial get _value => super._value as _FaceProcessingInitial;
}

/// @nodoc

class _$_FaceProcessingInitial
    with DiagnosticableTreeMixin
    implements _FaceProcessingInitial {
  const _$_FaceProcessingInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FaceProcessingState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FaceProcessingState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FaceProcessingInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<DetectedFace> faceList) faceFound,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<DetectedFace> faceList)? faceFound,
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
    required TResult Function(_FaceProcessingInitial value) initial,
    required TResult Function(FaceProcessingFound value) faceFound,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaceProcessingInitial value)? initial,
    TResult Function(FaceProcessingFound value)? faceFound,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FaceProcessingInitial implements FaceProcessingState {
  const factory _FaceProcessingInitial() = _$_FaceProcessingInitial;
}

/// @nodoc
abstract class $FaceProcessingFoundCopyWith<$Res> {
  factory $FaceProcessingFoundCopyWith(
          FaceProcessingFound value, $Res Function(FaceProcessingFound) then) =
      _$FaceProcessingFoundCopyWithImpl<$Res>;
  $Res call({List<DetectedFace> faceList});
}

/// @nodoc
class _$FaceProcessingFoundCopyWithImpl<$Res>
    extends _$FaceProcessingStateCopyWithImpl<$Res>
    implements $FaceProcessingFoundCopyWith<$Res> {
  _$FaceProcessingFoundCopyWithImpl(
      FaceProcessingFound _value, $Res Function(FaceProcessingFound) _then)
      : super(_value, (v) => _then(v as FaceProcessingFound));

  @override
  FaceProcessingFound get _value => super._value as FaceProcessingFound;

  @override
  $Res call({
    Object? faceList = freezed,
  }) {
    return _then(FaceProcessingFound(
      faceList == freezed
          ? _value.faceList
          : faceList // ignore: cast_nullable_to_non_nullable
              as List<DetectedFace>,
    ));
  }
}

/// @nodoc

class _$FaceProcessingFound
    with DiagnosticableTreeMixin
    implements FaceProcessingFound {
  const _$FaceProcessingFound(this.faceList);

  @override
  final List<DetectedFace> faceList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FaceProcessingState.faceFound(faceList: $faceList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FaceProcessingState.faceFound'))
      ..add(DiagnosticsProperty('faceList', faceList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FaceProcessingFound &&
            (identical(other.faceList, faceList) ||
                const DeepCollectionEquality()
                    .equals(other.faceList, faceList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(faceList);

  @JsonKey(ignore: true)
  @override
  $FaceProcessingFoundCopyWith<FaceProcessingFound> get copyWith =>
      _$FaceProcessingFoundCopyWithImpl<FaceProcessingFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<DetectedFace> faceList) faceFound,
  }) {
    return faceFound(faceList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<DetectedFace> faceList)? faceFound,
    required TResult orElse(),
  }) {
    if (faceFound != null) {
      return faceFound(faceList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FaceProcessingInitial value) initial,
    required TResult Function(FaceProcessingFound value) faceFound,
  }) {
    return faceFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaceProcessingInitial value)? initial,
    TResult Function(FaceProcessingFound value)? faceFound,
    required TResult orElse(),
  }) {
    if (faceFound != null) {
      return faceFound(this);
    }
    return orElse();
  }
}

abstract class FaceProcessingFound implements FaceProcessingState {
  const factory FaceProcessingFound(List<DetectedFace> faceList) =
      _$FaceProcessingFound;

  List<DetectedFace> get faceList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaceProcessingFoundCopyWith<FaceProcessingFound> get copyWith =>
      throw _privateConstructorUsedError;
}
