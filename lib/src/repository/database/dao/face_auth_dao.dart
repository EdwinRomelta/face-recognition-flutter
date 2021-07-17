import 'package:face_recognition_flutter/src/model/face_auth.dart';
import 'package:face_recognition_flutter/src/repository/database/face_auth_database.dart';
import 'package:face_recognition_flutter/src/repository/database/table/face_auth_table.dart';
import 'package:moor/moor.dart';

part 'face_auth_dao.g.dart';

@UseDao(tables: [
  FaceAuthTable,
])
class FaceAuthDao extends DatabaseAccessor<FaceAuthDatabase>
    with _$FaceAuthDaoMixin {
  FaceAuthDao(FaceAuthDatabase db) : super(db);

  Future<void> save(FaceAuth faceAuth) => into(faceAuthTable).insertOnConflictUpdate(faceAuth);

  Stream<List<FaceAuth>> all() => select(faceAuthTable).watch();
}
