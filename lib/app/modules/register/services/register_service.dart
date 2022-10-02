import 'dart:io';

import 'package:dio/dio.dart';
import 'package:e_commerce/app/core/const/endpoints_const.dart';
import 'package:e_commerce/app/core/dio_helper/dio_client.dart';
import 'package:e_commerce/app/modules/register/data/register_output_model.dart';
import 'package:e_commerce/app/utilities/logging.dart';

import '../data/register_input_model.dart';

class RegisterService {
  RegisterService._();

  static register(
    RegisterInputModel inputModel, {
    required Function(DioError error) onError,
    required Function(RegisterOutputModel outputModel) onSuccess,
  }) async {
    try {
      var result = await DioTools.post(EndpointsConst.auth.register,
          body: inputModel.toJson());
      if (result.statusCode == HttpStatus.created) {
        var res = RegisterOutputModel.fromJson(result.data);
        onSuccess(res);
      }
    } on DioError catch (e) {
      Log.error(e.message);
      onError(e);
    }
  }
}
