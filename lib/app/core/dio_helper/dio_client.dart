import 'package:dio/dio.dart';
import 'package:e_commerce/app/core/const/remote_const.dart';

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
    return await c.post(
      path,
      data: body,
      queryParameters: queryParameters,
    );
  }

  static Future<Response<dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? customHeaders,
  }) async {
    return await client(customHeaders: customHeaders).get(
      path,
      queryParameters: queryParameters,
    );
  }
}
