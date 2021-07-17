import 'dart:io';

import 'package:face_recognition_flutter/src/model/face_auth.dart';
import 'package:face_recognition_flutter/src/repository/database/dao/face_auth_dao.dart';
import 'package:face_recognition_flutter/src/repository/database/double_list_converter.dart';
import 'package:face_recognition_flutter/src/repository/database/table/face_auth_table.dart';
import 'package:injectable/injectable.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'face_auth_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(join(dbFolder.path, 'face_auth.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [
  FaceAuthTable,
], daos: [
  FaceAuthDao,
])
class FaceAuthDatabase extends _$FaceAuthDatabase {

  FaceAuthDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}
