import 'dart:io';

import 'package:dio/dio.dart';
import 'package:e_commerce/app/modules/products_list/data/product_model.dart';
import 'package:e_commerce/app/modules/products_list/data/products_input.dart';
import 'package:e_commerce/app/modules/products_list/services/products_service.dart';
import 'package:e_commerce/app/utilities/logging.dart';

class ProductsRepo {
  ProductsRepo._();

  static Future<List<Product>> getAllProducts(ProductsInput input) async {
    List<Product> prodList = [];

    try {
      var result = await ProductService.getAll(input.toJson());

      if (result.statusCode == HttpStatus.ok) {
        if (result.data["result"] == true) {
          Log.info(result.data["data"]);
          var list = result.data["data"] as List<dynamic>;
          for (var element in list) {
            prodList.add(Product.fromJson(element));
          }
          return prodList;
        }
        return [];
      }
      throw result.statusMessage.toString();
    } on DioError catch (e) {
      rethrow;
    }
  }
}
