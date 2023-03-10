import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../http_services/base_api.dart';
import '../http_services/constant_url_path.dart';

class BranchRepo {
  SharedPreferences localStorage;

  final api = baseAPI;
  final String _urlPath = ConstantURLPath.branch;

  BranchRepo({
    required this.localStorage,
  });

  get _token {
    return "${localStorage.getString('access_token')}";
  }

  Future<Map<String, dynamic>> getAll({Map<String, dynamic>? params}) async {
    Response response;

    response = await api.getAll(
      _token,
      urlPath: "$_urlPath/get_all",
      params: params,
    );

    return response.data;
  }
}
