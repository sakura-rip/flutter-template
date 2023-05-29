import 'package:example_app/db/database.dart';
import 'package:example_app/repository/db_repository.dart';

class DatabaseRepositoryImpl extends DatabaseClient implements DatabaseRepository {
  DatabaseRepositoryImpl() : super();

  @override
  Future<List<User>> listUsers () {
    return select(users).get();
  }
}
