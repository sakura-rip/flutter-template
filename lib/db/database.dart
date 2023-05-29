import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:example_app/db/table/users.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'database.g.dart';


LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Users])
class DatabaseClient extends _$DatabaseClient {
  DatabaseClient() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}
