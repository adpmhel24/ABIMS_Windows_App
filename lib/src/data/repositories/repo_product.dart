import 'package:dio/dio.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../http_services/base_api.dart';
import '../http_services/constant_url_path.dart';
import '../models/product/model.dart';

class ProductRepo {
  SharedPreferences localStorage;
  final api = baseAPI;
  final String urlPath = ConstantURLPath.item;

  ProductRepo({
    required this.localStorage,
  });

  List<ProductModel> _datas = [];
  List<ProductModel> get datas => _datas;

  get _token {
    return "${localStorage.getString('access_token')}";
  }

  Future<void> getAll({Map<String, dynamic>? params}) async {
    Response response;

    response = await api.getAll(
      _token,
      urlPath: "$urlPath/getall",
      params: params,
    );
    _datas = List<ProductModel>.from(
        response.data['data'].map((e) => ProductModel.fromJson(e))).toList();
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
    required String fk,
    required Map<String, dynamic> data,
  }) async {
    Response response;

    response = await api.update(
      _token,
      urlPath: "$urlPath$fk",
      data: data,
    );
    return response.data['message'];
  }
}
