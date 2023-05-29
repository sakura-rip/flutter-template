
import 'package:drift/drift.dart';


class Users extends Table {
  IntColumn get id => integer()();

  TextColumn get name => text().withLength(min: 1, max: 50)();

  TextColumn get biography => text().withLength(min: 0, max: 1000)();

  Set<Column> get primaryKey => {id};
}
