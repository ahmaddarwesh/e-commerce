import 'dart:io';

import 'package:dio/dio.dart';
import 'package:e_commerce/app/modules/login/data/login_input_model.dart';
import 'package:e_commerce/app/modules/login/data/login_output_model.dart';

import '../../../core/const/endpoints_const.dart';
import '../../../core/dio_helper/dio_client.dart';
import '../../../utilities/logging.dart';

class LoginService {
  LoginService._();

  static Future login(
    LoginInputModel model, {
    required Function(DioError error) onError,
    required Function(LoginOutputModel outputModel) onSuccess,
  }) async {
    try {
      var result =
          await DioTools.post(EndpointsConst.auth.login, body: model.toJson());
      if (result.statusCode == HttpStatus.ok) {
        var res = LoginOutputModel.fromJson(result.data);
        onSuccess(res);
      }
    } on DioError catch (e) {
      Log.error(e.message);
      onError(e);
    }
  }
}
