import 'package:dio/dio.dart';

class DioController {
  final Dio dio;

  static String baseUrl = "https://offers-project.herokuapp.com";
  static String api = baseUrl + "/api";
  DioController({
    required this.dio,
  });

  Future<String> checkToken({
    required String url,
    required String method,
    bool shouldRefresh = false,
  }) async {
    if (urlWithoutToken.contains(url)) {
      return '';
    } else {
      return '';
    }
  }

  Future<Response> refreshToken(String uid, String refreshToken) async {
    try {
      final result = await dio.post(
        "/auth/refreshToken",
        data: {
          "refreshToken": refreshToken,
          "userId": uid,
        },
      );
      return result;
    } catch (e) {
      rethrow;
    }
  }
}

List<String> urlWithoutToken = [
  "/auth/refreshToken",
  '/auth/loginEmployee',
];
