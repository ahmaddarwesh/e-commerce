import 'dart:io';

import 'package:dio/dio.dart';
import 'package:e_commerce/app/modules/customize_product/data/attributes_model.dart';

import '../../../core/const/endpoints_const.dart';
import '../../../core/dio_helper/dio_client.dart';

class AttributesService {
  AttributesService._();

  static Future attributes({
    required Function(DioError error) onError,
    required Function(AttributeResponseModel attributeResponseModel) onSuccess,
  }) async {
    try {
      var result = await DioTools.get(
        EndpointsConst.store.attributes.attributes,
      );
      if (result.statusCode == HttpStatus.ok) {
        onSuccess(AttributeResponseModel.fromJson(result.data));
      }
    } on DioError catch (e) {
      onError(e);
    }
  }
}
