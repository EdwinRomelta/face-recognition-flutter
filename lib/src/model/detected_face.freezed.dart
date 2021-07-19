// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'detected_face.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DetectedFaceTearOff {
  const _$DetectedFaceTearOff();

  _DetectedFace call(
      {required int trackingId,
      required Rect boundingBox,
      bool? isFraud,
      String? label,
      double? probability}) {
    return _DetectedFace(
      trackingId: trackingId,
      boundingBox: boundingBox,
      isFraud: isFraud,
      label: label,
      probability: probability,
    );
  }
}

/// @nodoc
const $DetectedFace = _$DetectedFaceTearOff();

/// @nodoc
mixin _$DetectedFace {
  int get trackingId => throw _privateConstructorUsedError;
  Rect get boundingBox => throw _privateConstructorUsedError;
  bool? get isFraud => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  double? get probability => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetectedFaceCopyWith<DetectedFace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetectedFaceCopyWith<$Res> {
  factory $DetectedFaceCopyWith(
          DetectedFace value, $Res Function(DetectedFace) then) =
      _$DetectedFaceCopyWithImpl<$Res>;
  $Res call(
      {int trackingId,
      Rect boundingBox,
      bool? isFraud,
      String? label,
      double? probability});
}

/// @nodoc
class _$DetectedFaceCopyWithImpl<$Res> implements $DetectedFaceCopyWith<$Res> {
  _$DetectedFaceCopyWithImpl(this._value, this._then);

  final DetectedFace _value;
  // ignore: unused_field
  final $Res Function(DetectedFace) _then;

  @override
  $Res call({
    Object? trackingId = freezed,
    Object? boundingBox = freezed,
    Object? isFraud = freezed,
    Object? label = freezed,
    Object? probability = freezed,
  }) {
    return _then(_value.copyWith(
      trackingId: trackingId == freezed
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as int,
      boundingBox: boundingBox == freezed
          ? _value.boundingBox
          : boundingBox // ignore: cast_nullable_to_non_nullable
              as Rect,
      isFraud: isFraud == freezed
          ? _value.isFraud
          : isFraud // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      probability: probability == freezed
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$DetectedFaceCopyWith<$Res>
    implements $DetectedFaceCopyWith<$Res> {
  factory _$DetectedFaceCopyWith(
          _DetectedFace value, $Res Function(_DetectedFace) then) =
      __$DetectedFaceCopyWithImpl<$Res>;
  @override
  $Res call(
      {int trackingId,
      Rect boundingBox,
      bool? isFraud,
      String? label,
      double? probability});
}

/// @nodoc
class __$DetectedFaceCopyWithImpl<$Res> extends _$DetectedFaceCopyWithImpl<$Res>
    implements _$DetectedFaceCopyWith<$Res> {
  __$DetectedFaceCopyWithImpl(
      _DetectedFace _value, $Res Function(_DetectedFace) _then)
      : super(_value, (v) => _then(v as _DetectedFace));

  @override
  _DetectedFace get _value => super._value as _DetectedFace;

  @override
  $Res call({
    Object? trackingId = freezed,
    Object? boundingBox = freezed,
    Object? isFraud = freezed,
    Object? label = freezed,
    Object? probability = freezed,
  }) {
    return _then(_DetectedFace(
      trackingId: trackingId == freezed
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as int,
      boundingBox: boundingBox == freezed
          ? _value.boundingBox
          : boundingBox // ignore: cast_nullable_to_non_nullable
              as Rect,
      isFraud: isFraud == freezed
          ? _value.isFraud
          : isFraud // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      probability: probability == freezed
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_DetectedFace implements _DetectedFace {
  const _$_DetectedFace(
      {required this.trackingId,
      required this.boundingBox,
      this.isFraud,
      this.label,
      this.probability});

  @override
  final int trackingId;
  @override
  final Rect boundingBox;
  @override
  final bool? isFraud;
  @override
  final String? label;
  @override
  final double? probability;

  @override
  String toString() {
    return 'DetectedFace(trackingId: $trackingId, boundingBox: $boundingBox, isFraud: $isFraud, label: $label, probability: $probability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetectedFace &&
            (identical(other.trackingId, trackingId) ||
                const DeepCollectionEquality()
                    .equals(other.trackingId, trackingId)) &&
            (identical(other.boundingBox, boundingBox) ||
                const DeepCollectionEquality()
                    .equals(other.boundingBox, boundingBox)) &&
            (identical(other.isFraud, isFraud) ||
                const DeepCollectionEquality()
                    .equals(other.isFraud, isFraud)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.probability, probability) ||
                const DeepCollectionEquality()
                    .equals(other.probability, probability)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackingId) ^
      const DeepCollectionEquality().hash(boundingBox) ^
      const DeepCollectionEquality().hash(isFraud) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(probability);

  @JsonKey(ignore: true)
  @override
  _$DetectedFaceCopyWith<_DetectedFace> get copyWith =>
      __$DetectedFaceCopyWithImpl<_DetectedFace>(this, _$identity);
}

abstract class _DetectedFace implements DetectedFace {
  const factory _DetectedFace(
      {required int trackingId,
      required Rect boundingBox,
      bool? isFraud,
      String? label,
      double? probability}) = _$_DetectedFace;

  @override
  int get trackingId => throw _privateConstructorUsedError;
  @override
  Rect get boundingBox => throw _privateConstructorUsedError;
  @override
  bool? get isFraud => throw _privateConstructorUsedError;
  @override
  String? get label => throw _privateConstructorUsedError;
  @override
  double? get probability => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DetectedFaceCopyWith<_DetectedFace> get copyWith =>
      throw _privateConstructorUsedError;
}
