import 'package:dio/dio.dart';
import 'package:example_app/constants/exceptions.dart';
import 'package:example_app/freezed/user/user.dart';
import 'package:example_app/repository/api_repository.dart';

class ApiRepositoryImpl implements ApiRepository {
  late final Dio _client;

  ApiRepositoryImpl(this._client);

  @override
  Future<User> fetchUser() async {
    try {
      final res = await _client.get("/user/me");
      return User.fromJson(res.data);
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
