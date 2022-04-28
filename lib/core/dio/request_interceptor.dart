import 'dart:developer';

import 'package:dio/dio.dart';

import 'dio_controller.dart';

class RequestInterceptor extends Interceptor {
  DioController dioController;
  RequestInterceptor({required this.dioController});
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    log("Hi RequestInterceptor");

    await dioController
        .checkToken(url: options.path, method: options.method)
        .then((value) => options.headers['Authorization'] = 'Bearer $value');
    log(
      '---------------------------------------------------------------------------------------------"\n#Start Request#\n@path:${options.uri}\n@headers:${options.headers}\n@data:${options.data}\n@queryParameters:${options.queryParameters}\n#End Request#\n"---------------------------------------------------------------------------------------------',
    );
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log(
      '---------------------------------------------------------------------------------------------"\n#Start Response#\n@path:${response.requestOptions.path}\n@statusCode:${response.statusCode}\n@data:${response.data}\n#End Response#\n"---------------------------------------------------------------------------------------------',
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response != null) {
      log(
        '---------------------------------------------------------------------------------------------"\n#Start Error#\n@path:${err.requestOptions.path}\n@message:${err.response!.data}\n@code:${err.response!.statusCode}\n@type:${err.type}\n#End Error#\n"---------------------------------------------------------------------------------------------',
      );
    } else {
      log(
        '---------------------------------------------------------------------------------------------"\n#Start Error#\n@path:${err.requestOptions.path}\n@message:${err.message}\n@code:UnKnown\n@type:${err.type}\n#End Error#\n"---------------------------------------------------------------------------------------------',
      );
    }
    super.onError(err, handler);
  }
}
