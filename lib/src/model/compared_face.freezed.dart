// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'compared_face.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ComparedFaceTearOff {
  const _$ComparedFaceTearOff();

  _ComparedFace call(
      {required String label,
      required String path,
      required String probability}) {
    return _ComparedFace(
      label: label,
      path: path,
      probability: probability,
    );
  }
}

/// @nodoc
const $ComparedFace = _$ComparedFaceTearOff();

/// @nodoc
mixin _$ComparedFace {
  String get label => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get probability => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComparedFaceCopyWith<ComparedFace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComparedFaceCopyWith<$Res> {
  factory $ComparedFaceCopyWith(
          ComparedFace value, $Res Function(ComparedFace) then) =
      _$ComparedFaceCopyWithImpl<$Res>;
  $Res call({String label, String path, String probability});
}

/// @nodoc
class _$ComparedFaceCopyWithImpl<$Res> implements $ComparedFaceCopyWith<$Res> {
  _$ComparedFaceCopyWithImpl(this._value, this._then);

  final ComparedFace _value;
  // ignore: unused_field
  final $Res Function(ComparedFace) _then;

  @override
  $Res call({
    Object? label = freezed,
    Object? path = freezed,
    Object? probability = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      probability: probability == freezed
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ComparedFaceCopyWith<$Res>
    implements $ComparedFaceCopyWith<$Res> {
  factory _$ComparedFaceCopyWith(
          _ComparedFace value, $Res Function(_ComparedFace) then) =
      __$ComparedFaceCopyWithImpl<$Res>;
  @override
  $Res call({String label, String path, String probability});
}

/// @nodoc
class __$ComparedFaceCopyWithImpl<$Res> extends _$ComparedFaceCopyWithImpl<$Res>
    implements _$ComparedFaceCopyWith<$Res> {
  __$ComparedFaceCopyWithImpl(
      _ComparedFace _value, $Res Function(_ComparedFace) _then)
      : super(_value, (v) => _then(v as _ComparedFace));

  @override
  _ComparedFace get _value => super._value as _ComparedFace;

  @override
  $Res call({
    Object? label = freezed,
    Object? path = freezed,
    Object? probability = freezed,
  }) {
    return _then(_ComparedFace(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      probability: probability == freezed
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ComparedFace implements _ComparedFace {
  const _$_ComparedFace(
      {required this.label, required this.path, required this.probability});

  @override
  final String label;
  @override
  final String path;
  @override
  final String probability;

  @override
  String toString() {
    return 'ComparedFace(label: $label, path: $path, probability: $probability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ComparedFace &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.probability, probability) ||
                const DeepCollectionEquality()
                    .equals(other.probability, probability)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(probability);

  @JsonKey(ignore: true)
  @override
  _$ComparedFaceCopyWith<_ComparedFace> get copyWith =>
      __$ComparedFaceCopyWithImpl<_ComparedFace>(this, _$identity);
}

abstract class _ComparedFace implements ComparedFace {
  const factory _ComparedFace(
      {required String label,
      required String path,
      required String probability}) = _$_ComparedFace;

  @override
  String get label => throw _privateConstructorUsedError;
  @override
  String get path => throw _privateConstructorUsedError;
  @override
  String get probability => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ComparedFaceCopyWith<_ComparedFace> get copyWith =>
      throw _privateConstructorUsedError;
}
