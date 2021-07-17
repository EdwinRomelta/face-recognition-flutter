import 'dart:typed_data';

import 'package:moor/moor.dart';

class DoubleListConverter extends TypeConverter<List<double>, Uint8List> {
  const DoubleListConverter();

  @override
  List<double>? mapToDart(Uint8List? fromDb) {
    final uint8list = fromDb;
    if (uint8list == null) return null;
    final bdata = ByteData.view(uint8list.buffer);
    return List.generate(
        (uint8list.length / 8).round(), (index) => bdata.getFloat64(index * 8));
  }

  @override
  Uint8List? mapToSql(List<double>? value) {
    final doubleList = value;
    if (doubleList == null) return null;
    final uint8List = Uint8List(8 * doubleList.length);
    final bdata = ByteData.view(uint8List.buffer);
    for (int i = 0; i < doubleList.length; i++) {
      bdata.setFloat64(i * 8, doubleList[i]);
    }
    return uint8List;
  }
}
