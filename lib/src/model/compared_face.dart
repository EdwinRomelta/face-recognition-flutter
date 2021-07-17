import 'package:freezed_annotation/freezed_annotation.dart';

part 'compared_face.freezed.dart';

@freezed
class ComparedFace with _$ComparedFace {
  const factory ComparedFace({
    required String label,
    required String path,
    required String probability,
  }) = _ComparedFace;
}
