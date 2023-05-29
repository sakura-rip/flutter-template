import 'package:dio/dio.dart';

class DataException implements Exception {
  DataException({required this.message});

  DataException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "リクエストがキャンセルされました。";
        break;
      case DioErrorType.connectionTimeout:
      case DioErrorType.receiveTimeout:
      case DioErrorType.sendTimeout:
        message = "リクエストがタイムアウトしました。";
        break;
      case DioErrorType.badResponse:
        message = _handleError(dioError.response!.statusCode!);
        break;
      default:
        message = "インターネット接続に問題があります。";
        break;
    }
  }

  String message = "";

  String _handleError(int statusCode) {
    switch (statusCode) {
      case 400:
        return "不正なリクエストです。";
      case 404:
        return "見つかりませんでした。";
      case 500:
        return "サーバーエラーが発生しました。";
      default:
        return "不明なエラーが発生しました。";
    }
  }

  @override
  String toString() => message;
}
