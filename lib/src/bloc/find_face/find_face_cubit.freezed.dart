// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'find_face_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FindFaceStateTearOff {
  const _$FindFaceStateTearOff();

  _FindFaceInitial initial() {
    return const _FindFaceInitial();
  }

  FindFaceWaitingForSubmit waitingForSubmit(List<Face> faceList) {
    return FindFaceWaitingForSubmit(
      faceList,
    );
  }

  FindFaceSuccess success(Uint8List croppedFace) {
    return FindFaceSuccess(
      croppedFace,
    );
  }
}

/// @nodoc
const $FindFaceState = _$FindFaceStateTearOff();

/// @nodoc
mixin _$FindFaceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Face> faceList) waitingForSubmit,
    required TResult Function(Uint8List croppedFace) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Face> faceList)? waitingForSubmit,
    TResult Function(Uint8List croppedFace)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FindFaceInitial value) initial,
    required TResult Function(FindFaceWaitingForSubmit value) waitingForSubmit,
    required TResult Function(FindFaceSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FindFaceInitial value)? initial,
    TResult Function(FindFaceWaitingForSubmit value)? waitingForSubmit,
    TResult Function(FindFaceSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindFaceStateCopyWith<$Res> {
  factory $FindFaceStateCopyWith(
          FindFaceState value, $Res Function(FindFaceState) then) =
      _$FindFaceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindFaceStateCopyWithImpl<$Res>
    implements $FindFaceStateCopyWith<$Res> {
  _$FindFaceStateCopyWithImpl(this._value, this._then);

  final FindFaceState _value;
  // ignore: unused_field
  final $Res Function(FindFaceState) _then;
}

/// @nodoc
abstract class _$FindFaceInitialCopyWith<$Res> {
  factory _$FindFaceInitialCopyWith(
          _FindFaceInitial value, $Res Function(_FindFaceInitial) then) =
      __$FindFaceInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$FindFaceInitialCopyWithImpl<$Res>
    extends _$FindFaceStateCopyWithImpl<$Res>
    implements _$FindFaceInitialCopyWith<$Res> {
  __$FindFaceInitialCopyWithImpl(
      _FindFaceInitial _value, $Res Function(_FindFaceInitial) _then)
      : super(_value, (v) => _then(v as _FindFaceInitial));

  @override
  _FindFaceInitial get _value => super._value as _FindFaceInitial;
}

/// @nodoc

class _$_FindFaceInitial
    with DiagnosticableTreeMixin
    implements _FindFaceInitial {
  const _$_FindFaceInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindFaceState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FindFaceState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FindFaceInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Face> faceList) waitingForSubmit,
    required TResult Function(Uint8List croppedFace) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Face> faceList)? waitingForSubmit,
    TResult Function(Uint8List croppedFace)? success,
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
    required TResult Function(_FindFaceInitial value) initial,
    required TResult Function(FindFaceWaitingForSubmit value) waitingForSubmit,
    required TResult Function(FindFaceSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FindFaceInitial value)? initial,
    TResult Function(FindFaceWaitingForSubmit value)? waitingForSubmit,
    TResult Function(FindFaceSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FindFaceInitial implements FindFaceState {
  const factory _FindFaceInitial() = _$_FindFaceInitial;
}

/// @nodoc
abstract class $FindFaceWaitingForSubmitCopyWith<$Res> {
  factory $FindFaceWaitingForSubmitCopyWith(FindFaceWaitingForSubmit value,
          $Res Function(FindFaceWaitingForSubmit) then) =
      _$FindFaceWaitingForSubmitCopyWithImpl<$Res>;
  $Res call({List<Face> faceList});
}

/// @nodoc
class _$FindFaceWaitingForSubmitCopyWithImpl<$Res>
    extends _$FindFaceStateCopyWithImpl<$Res>
    implements $FindFaceWaitingForSubmitCopyWith<$Res> {
  _$FindFaceWaitingForSubmitCopyWithImpl(FindFaceWaitingForSubmit _value,
      $Res Function(FindFaceWaitingForSubmit) _then)
      : super(_value, (v) => _then(v as FindFaceWaitingForSubmit));

  @override
  FindFaceWaitingForSubmit get _value =>
      super._value as FindFaceWaitingForSubmit;

  @override
  $Res call({
    Object? faceList = freezed,
  }) {
    return _then(FindFaceWaitingForSubmit(
      faceList == freezed
          ? _value.faceList
          : faceList // ignore: cast_nullable_to_non_nullable
              as List<Face>,
    ));
  }
}

/// @nodoc

class _$FindFaceWaitingForSubmit
    with DiagnosticableTreeMixin
    implements FindFaceWaitingForSubmit {
  const _$FindFaceWaitingForSubmit(this.faceList);

  @override
  final List<Face> faceList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindFaceState.waitingForSubmit(faceList: $faceList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindFaceState.waitingForSubmit'))
      ..add(DiagnosticsProperty('faceList', faceList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FindFaceWaitingForSubmit &&
            (identical(other.faceList, faceList) ||
                const DeepCollectionEquality()
                    .equals(other.faceList, faceList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(faceList);

  @JsonKey(ignore: true)
  @override
  $FindFaceWaitingForSubmitCopyWith<FindFaceWaitingForSubmit> get copyWith =>
      _$FindFaceWaitingForSubmitCopyWithImpl<FindFaceWaitingForSubmit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Face> faceList) waitingForSubmit,
    required TResult Function(Uint8List croppedFace) success,
  }) {
    return waitingForSubmit(faceList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Face> faceList)? waitingForSubmit,
    TResult Function(Uint8List croppedFace)? success,
    required TResult orElse(),
  }) {
    if (waitingForSubmit != null) {
      return waitingForSubmit(faceList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FindFaceInitial value) initial,
    required TResult Function(FindFaceWaitingForSubmit value) waitingForSubmit,
    required TResult Function(FindFaceSuccess value) success,
  }) {
    return waitingForSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FindFaceInitial value)? initial,
    TResult Function(FindFaceWaitingForSubmit value)? waitingForSubmit,
    TResult Function(FindFaceSuccess value)? success,
    required TResult orElse(),
  }) {
    if (waitingForSubmit != null) {
      return waitingForSubmit(this);
    }
    return orElse();
  }
}

abstract class FindFaceWaitingForSubmit implements FindFaceState {
  const factory FindFaceWaitingForSubmit(List<Face> faceList) =
      _$FindFaceWaitingForSubmit;

  List<Face> get faceList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindFaceWaitingForSubmitCopyWith<FindFaceWaitingForSubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindFaceSuccessCopyWith<$Res> {
  factory $FindFaceSuccessCopyWith(
          FindFaceSuccess value, $Res Function(FindFaceSuccess) then) =
      _$FindFaceSuccessCopyWithImpl<$Res>;
  $Res call({Uint8List croppedFace});
}

/// @nodoc
class _$FindFaceSuccessCopyWithImpl<$Res>
    extends _$FindFaceStateCopyWithImpl<$Res>
    implements $FindFaceSuccessCopyWith<$Res> {
  _$FindFaceSuccessCopyWithImpl(
      FindFaceSuccess _value, $Res Function(FindFaceSuccess) _then)
      : super(_value, (v) => _then(v as FindFaceSuccess));

  @override
  FindFaceSuccess get _value => super._value as FindFaceSuccess;

  @override
  $Res call({
    Object? croppedFace = freezed,
  }) {
    return _then(FindFaceSuccess(
      croppedFace == freezed
          ? _value.croppedFace
          : croppedFace // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$FindFaceSuccess
    with DiagnosticableTreeMixin
    implements FindFaceSuccess {
  const _$FindFaceSuccess(this.croppedFace);

  @override
  final Uint8List croppedFace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindFaceState.success(croppedFace: $croppedFace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindFaceState.success'))
      ..add(DiagnosticsProperty('croppedFace', croppedFace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FindFaceSuccess &&
            (identical(other.croppedFace, croppedFace) ||
                const DeepCollectionEquality()
                    .equals(other.croppedFace, croppedFace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(croppedFace);

  @JsonKey(ignore: true)
  @override
  $FindFaceSuccessCopyWith<FindFaceSuccess> get copyWith =>
      _$FindFaceSuccessCopyWithImpl<FindFaceSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Face> faceList) waitingForSubmit,
    required TResult Function(Uint8List croppedFace) success,
  }) {
    return success(croppedFace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Face> faceList)? waitingForSubmit,
    TResult Function(Uint8List croppedFace)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(croppedFace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FindFaceInitial value) initial,
    required TResult Function(FindFaceWaitingForSubmit value) waitingForSubmit,
    required TResult Function(FindFaceSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FindFaceInitial value)? initial,
    TResult Function(FindFaceWaitingForSubmit value)? waitingForSubmit,
    TResult Function(FindFaceSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FindFaceSuccess implements FindFaceState {
  const factory FindFaceSuccess(Uint8List croppedFace) = _$FindFaceSuccess;

  Uint8List get croppedFace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindFaceSuccessCopyWith<FindFaceSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
