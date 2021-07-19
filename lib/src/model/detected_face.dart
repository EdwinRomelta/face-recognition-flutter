import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detected_face.freezed.dart';

@freezed
class DetectedFace with _$DetectedFace {
  const factory DetectedFace({
    required int trackingId,
    required Rect boundingBox,
    bool? isFraud,
    String? label,
    double? probability,
  }) = _DetectedFace;
}
