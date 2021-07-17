import 'package:face_recognition_flutter/src/repository/database/face_auth_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moor/moor.dart' hide JsonKey;

part 'face_auth.freezed.dart';

@freezed
class FaceAuth with _$FaceAuth implements Insertable<FaceAuth> {

  const FaceAuth._();

  const factory FaceAuth({
    required String label,
    required String path,
    required List<double> metadata,
  }) = _FaceAuth;


  @override
  Map<String, Expression> toColumns(bool nullToAbsent) =>
      FaceAuthTableCompanion(
        label: Value(label),
        path: Value(path),
        metadata: Value(metadata),
      ).toColumns(nullToAbsent);
}
