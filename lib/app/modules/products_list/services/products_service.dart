import 'package:dio/dio.dart';
import 'package:e_commerce/app/core/const/endpoints_const.dart';
import 'package:e_commerce/app/core/dio_helper/dio_client.dart';

class ProductService {
  ProductService._();

  static Future<Response<dynamic>> getAll(
    Map<String, dynamic> queryParameter,
  ) async {
    return await DioTools.get(
      EndpointsConst.store.products.products,
      queryParameters: queryParameter,
    );
  }
}
