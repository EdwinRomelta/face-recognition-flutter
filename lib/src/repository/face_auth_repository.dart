import 'package:face_recognition_flutter/src/model/face_auth.dart';
import 'package:face_recognition_flutter/src/repository/database/dao/face_auth_dao.dart';
import 'package:injectable/injectable.dart';

@singleton
class FaceAuthRepository {
  final FaceAuthDao _faceAuthDao;

  FaceAuthRepository(this._faceAuthDao);

  Future<void> save(FaceAuth faceAuth) => _faceAuthDao.save(faceAuth);

  Stream<List<FaceAuth>> watchAll() => _faceAuthDao.all();
}
