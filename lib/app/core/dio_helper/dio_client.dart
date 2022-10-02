import 'package:dio/dio.dart';
import 'package:e_commerce/app/core/const/remote_const.dart';
import 'package:flutter/cupertino.dart';

import 'interceptor.dart';

class DioInstance {
  static Dio dio = Dio();

  static Future dioInit() async {
    dio.interceptors.clear();

    dio.interceptors.add(AuthorizationInterceptor());
  }
}

class DioTools {
  static Dio client({
    isUploading = false,
    Map<String, String>? customHeaders,
  }) {
    var options = BaseOptions(
      baseUrl: RemoteConst.url,
      contentType: isUploading ? 'multipart/form-data' : "application/json",
      headers: {
        "Accept": "application/json",
        "Accept-Language": "en",
      },
    );

    DioInstance.dio.options = options;

    return DioInstance.dio;
  }

  static Future<Response<dynamic>> post(
    String path, {
    required body,
    Map<String, String>? customHeaders,
    Map<String, String>? queryParameters,
    bool isUpload = false,
  }) async {
    var c = client(
      isUploading: isUpload,
      customHeaders: customHeaders,
    );
    return await c.post(path, data: body, queryParameters: queryParameters);
  }

  static delete(
    String path, {
    queryParameters,
    body,
    required Function(Response response) onSuccess,
    required Function(dynamic message) onError,
  }) async {
    var c = await client();
    await c.delete(path, data: body, queryParameters: queryParameters).then(
          (value) {},
        );
  }

  static get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? customHeaders,
    required Function(Response response) onSuccess,
    required Function(dynamic message) onError,
    void Function(dynamic exception)? onException,
  }) async {
    try {
      var c = await client(customHeaders: customHeaders);
      await c.get(path, queryParameters: queryParameters).then(
        (value) {
          if (value.data["Flag"] == 0) {
            onSuccess(value);
          } else {
            onError(value.data);
          }
        },
      );
    } on DioError catch (e) {
      if (onException != null) {
        onException(e);
      }
    }
  }

  static put(
    String path, {
    @required body,
    Map<String, String>? customHeaders,
    Map<String, String>? queryParameters,
    required Function(Response response) onSuccess,
    required Function(dynamic message) onError,
    void Function(dynamic exception)? onException,
    bool isUpload = false,
  }) async {
    try {
      var c = await client(
        isUploading: isUpload,
        customHeaders: customHeaders,
      );
      await c.put(path, data: body, queryParameters: queryParameters).then(
        (value) {
          if (value.data["Flag"] == 0) {
            onSuccess(value);
          } else {
            onError(value.data);
          }
        },
      );
    }
    //  on DioError
    catch (e) {
      if (onException != null) {
        onException(e);
      }
    }
  }
}
