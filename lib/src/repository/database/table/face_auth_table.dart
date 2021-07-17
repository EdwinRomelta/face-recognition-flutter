import 'package:face_recognition_flutter/src/model/face_auth.dart';
import 'package:face_recognition_flutter/src/repository/database/double_list_converter.dart';
import 'package:moor/moor.dart';

@UseRowClass(FaceAuth)
class FaceAuthTable extends Table {
  TextColumn get label => text()();

  TextColumn get path => text()();

  BlobColumn get metadata => blob().map(const DoubleListConverter())();

  @override
  Set<Column>? get primaryKey => {label};
}
