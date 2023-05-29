import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:example_app/model/user/user.dart';
import 'package:example_app/repository/api_client.dart';

//TODO: header
final apiClientProvider = Provider((ref) => ApiRepositoryImpl(Dio(BaseOptions(
    headers: {"authenticate": ""}, baseUrl: dotenv.env["API_ENDPOINT"]!))));

abstract class ApiRepository {
  Future<User> fetchUser();
}
