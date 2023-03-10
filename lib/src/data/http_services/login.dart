import '/src/data/http_services/dio_settings.dart';
import 'package:dio/dio.dart';

import 'custom_throw_error.dart';

class LoginAPI {
  final Dio _dio = dio;

  Future<Response> login(Map<String, dynamic> data) async {
    Response response;

    try {
      response = await _dio.get(
        '/api/auth/login',
        queryParameters: data,
      );
    } on DioError catch (e) {
      throw CustomThrowError.throwError(e);
    }
    return response;
  }

  ///Singleton factory
  static final LoginAPI _instance = LoginAPI._internal();

  factory LoginAPI() {
    return _instance;
  }

  LoginAPI._internal();
}
