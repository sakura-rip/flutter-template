
import 'package:example_app/repository/db_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final databaseProvider = Provider((ref) => DatabaseRepositoryImpl());
