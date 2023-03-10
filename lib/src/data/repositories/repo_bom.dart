import '/src/data/models/bom/model.dart';
import 'package:dio/dio.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../http_services/base_api.dart';
import '../http_services/constant_url_path.dart';

class BomRepo {
  SharedPreferences localStorage;
  final api = baseAPI;
  final String urlPath = ConstantURLPath.bom;

  BomRepo({
    required this.localStorage,
  });

  List<BoMModel> _datas = [];
  List<BoMModel> get datas => _datas;

  get _token {
    return "${localStorage.getString('access_token')}";
  }

  Future<void> getAll({Map<String, dynamic>? params}) async {
    Response response;

    response = await api.getAll(
      _token,
      urlPath: "$urlPath/get_all",
      params: params,
    );
    _datas = List<BoMModel>.from(
        response.data['data'].map((e) => BoMModel.fromJson(e))).toList();
  }

  Future<String> create(Map<String, dynamic> data) async {
    Response response;

    response = await api.create(
      _token,
      urlPath: "$urlPath/new",
      data: data,
    );

    return response.data['message'];
  }

  Future<String> update({
    required int fk,
    required Map<String, dynamic> data,
  }) async {
    Response response;

    response = await api.update(
      _token,
      urlPath: "$urlPath/update/$fk",
      data: data,
    );
    return response.data['message'];
  }
}
