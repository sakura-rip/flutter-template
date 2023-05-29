import 'package:example_app/db/database.dart';

abstract class DatabaseRepository {
  Future<List<User>> listUsers ();
}
