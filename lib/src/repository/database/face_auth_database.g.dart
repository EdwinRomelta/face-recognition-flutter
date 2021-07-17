// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_auth_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class FaceAuthTableCompanion extends UpdateCompanion<FaceAuth> {
  final Value<String> label;
  final Value<String> path;
  final Value<List<double>> metadata;
  const FaceAuthTableCompanion({
    this.label = const Value.absent(),
    this.path = const Value.absent(),
    this.metadata = const Value.absent(),
  });
  FaceAuthTableCompanion.insert({
    required String label,
    required String path,
    required List<double> metadata,
  })  : label = Value(label),
        path = Value(path),
        metadata = Value(metadata);
  static Insertable<FaceAuth> custom({
    Expression<String>? label,
    Expression<String>? path,
    Expression<List<double>>? metadata,
  }) {
    return RawValuesInsertable({
      if (label != null) 'label': label,
      if (path != null) 'path': path,
      if (metadata != null) 'metadata': metadata,
    });
  }

  FaceAuthTableCompanion copyWith(
      {Value<String>? label,
      Value<String>? path,
      Value<List<double>>? metadata}) {
    return FaceAuthTableCompanion(
      label: label ?? this.label,
      path: path ?? this.path,
      metadata: metadata ?? this.metadata,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    if (metadata.present) {
      final converter = $FaceAuthTableTable.$converter0;
      map['metadata'] =
          Variable<Uint8List>(converter.mapToSql(metadata.value)!);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FaceAuthTableCompanion(')
          ..write('label: $label, ')
          ..write('path: $path, ')
          ..write('metadata: $metadata')
          ..write(')'))
        .toString();
  }
}

class $FaceAuthTableTable extends FaceAuthTable
    with TableInfo<$FaceAuthTableTable, FaceAuth> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FaceAuthTableTable(this._db, [this._alias]);
  final VerificationMeta _labelMeta = const VerificationMeta('label');
  late final GeneratedColumn<String?> label = GeneratedColumn<String?>(
      'label', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _pathMeta = const VerificationMeta('path');
  late final GeneratedColumn<String?> path = GeneratedColumn<String?>(
      'path', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _metadataMeta = const VerificationMeta('metadata');
  late final GeneratedColumnWithTypeConverter<List<double>, Uint8List?>
      metadata = GeneratedColumn<Uint8List?>('metadata', aliasedName, false,
              typeName: 'BLOB', requiredDuringInsert: true)
          .withConverter<List<double>>($FaceAuthTableTable.$converter0);
  @override
  List<GeneratedColumn> get $columns => [label, path, metadata];
  @override
  String get aliasedName => _alias ?? 'face_auth_table';
  @override
  String get actualTableName => 'face_auth_table';
  @override
  VerificationContext validateIntegrity(Insertable<FaceAuth> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('path')) {
      context.handle(
          _pathMeta, path.isAcceptableOrUnknown(data['path']!, _pathMeta));
    } else if (isInserting) {
      context.missing(_pathMeta);
    }
    context.handle(_metadataMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {label};
  @override
  FaceAuth map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FaceAuth(
      label: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}label'])!,
      path: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}path'])!,
      metadata: $FaceAuthTableTable.$converter0.mapToDart(const BlobType()
          .mapFromDatabaseResponse(data['${effectivePrefix}metadata']))!,
    );
  }

  @override
  $FaceAuthTableTable createAlias(String alias) {
    return $FaceAuthTableTable(_db, alias);
  }

  static TypeConverter<List<double>, Uint8List> $converter0 =
      const DoubleListConverter();
}

abstract class _$FaceAuthDatabase extends GeneratedDatabase {
  _$FaceAuthDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $FaceAuthTableTable faceAuthTable = $FaceAuthTableTable(this);
  late final FaceAuthDao faceAuthDao = FaceAuthDao(this as FaceAuthDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [faceAuthTable];
}
