import 'package:dio/dio.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/http_services/base_api.dart';
import '../../../../data/http_services/constant_url_path.dart';

class GoodsIssueRepo {
  SharedPreferences localStorage;
  final api = baseAPI;
  final String urlPath = ConstantURLPath.goodsIssue;

  GoodsIssueRepo({
    required this.localStorage,
  });

  get _token {
    return "${localStorage.getString('access_token')}";
  }

  Future<Map<String, dynamic>> getForSap({Map<String, dynamic>? params}) async {
    Response response;

    response = await api.getAll(
      _token,
      urlPath: "$urlPath/get_for_sap/",
      params: params,
    );
    return response.data;
  }

  Future<String> update({
    required Map<String, dynamic> data,
  }) async {
    Response response;

    response = await api.update(
      _token,
      urlPath: "$urlPath/update/sap_num/",
      data: data,
    );
    return response.data['message'];
  }
}
