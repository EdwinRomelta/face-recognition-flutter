import 'package:face_recognition_flutter/src/repository/database/dao/face_auth_dao.dart';
import 'package:injectable/injectable.dart';

import 'face_auth_database.dart';

@module
abstract class DatabaseModule {
  @singleton
  FaceAuthDatabase get faceAuthDatabase => FaceAuthDatabase();

  @singleton
  FaceAuthDao faceAuthDao(FaceAuthDatabase faceAuthDatabase) =>
      faceAuthDatabase.faceAuthDao;
}
