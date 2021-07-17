// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'face_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FaceAuthTearOff {
  const _$FaceAuthTearOff();

  _FaceAuth call(
      {required String label,
      required String path,
      required List<double> metadata}) {
    return _FaceAuth(
      label: label,
      path: path,
      metadata: metadata,
    );
  }
}

/// @nodoc
const $FaceAuth = _$FaceAuthTearOff();

/// @nodoc
mixin _$FaceAuth {
  String get label => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  List<double> get metadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FaceAuthCopyWith<FaceAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceAuthCopyWith<$Res> {
  factory $FaceAuthCopyWith(FaceAuth value, $Res Function(FaceAuth) then) =
      _$FaceAuthCopyWithImpl<$Res>;
  $Res call({String label, String path, List<double> metadata});
}

/// @nodoc
class _$FaceAuthCopyWithImpl<$Res> implements $FaceAuthCopyWith<$Res> {
  _$FaceAuthCopyWithImpl(this._value, this._then);

  final FaceAuth _value;
  // ignore: unused_field
  final $Res Function(FaceAuth) _then;

  @override
  $Res call({
    Object? label = freezed,
    Object? path = freezed,
    Object? metadata = freezed,
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
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
abstract class _$FaceAuthCopyWith<$Res> implements $FaceAuthCopyWith<$Res> {
  factory _$FaceAuthCopyWith(_FaceAuth value, $Res Function(_FaceAuth) then) =
      __$FaceAuthCopyWithImpl<$Res>;
  @override
  $Res call({String label, String path, List<double> metadata});
}

/// @nodoc
class __$FaceAuthCopyWithImpl<$Res> extends _$FaceAuthCopyWithImpl<$Res>
    implements _$FaceAuthCopyWith<$Res> {
  __$FaceAuthCopyWithImpl(_FaceAuth _value, $Res Function(_FaceAuth) _then)
      : super(_value, (v) => _then(v as _FaceAuth));

  @override
  _FaceAuth get _value => super._value as _FaceAuth;

  @override
  $Res call({
    Object? label = freezed,
    Object? path = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_FaceAuth(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$_FaceAuth extends _FaceAuth {
  const _$_FaceAuth(
      {required this.label, required this.path, required this.metadata})
      : super._();

  @override
  final String label;
  @override
  final String path;
  @override
  final List<double> metadata;

  @override
  String toString() {
    return 'FaceAuth(label: $label, path: $path, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FaceAuth &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(metadata);

  @JsonKey(ignore: true)
  @override
  _$FaceAuthCopyWith<_FaceAuth> get copyWith =>
      __$FaceAuthCopyWithImpl<_FaceAuth>(this, _$identity);
}

abstract class _FaceAuth extends FaceAuth {
  const factory _FaceAuth(
      {required String label,
      required String path,
      required List<double> metadata}) = _$_FaceAuth;
  const _FaceAuth._() : super._();

  @override
  String get label => throw _privateConstructorUsedError;
  @override
  String get path => throw _privateConstructorUsedError;
  @override
  List<double> get metadata => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FaceAuthCopyWith<_FaceAuth> get copyWith =>
      throw _privateConstructorUsedError;
}
