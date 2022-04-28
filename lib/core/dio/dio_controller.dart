import 'package:dio/dio.dart';

class DioController {
  final Dio dio;

  static String baseUrl = "https://offers-project.herokuapp.com";
  static String api = baseUrl + "/api";
  // final StorageService storageService;
  DioController({
    required this.dio,
    // required this.storageService,
  });

  Future<String> checkToken({
    required String url,
    required String method,
    bool shouldRefresh = false,
  }) async {
    if (urlWithoutToken.contains(url)) {
      return '';
    } else {
      // if (shouldRefresh
      // ||
      // DateTime.now().isAfter(DataHelper.employee!.expiresIn)) {
      //     try {
      //       final Response result = await refreshToken(
      //         DataHelper.employee!.uid,
      //         DataHelper.employee!.refreshToken,
      //       );
      //       DataHelper.employee!.accessToken = result.data['accessToken'];
      //       DataHelper.employee!.expiresIn =
      //           DateTime.now().add(Duration(seconds: result.data['expiresIn']));
      //       storageService.employeeStorage.setEmployee(DataHelper.employee!);
      //       return result.data['accessToken'];
      //     } on DioError {
      return '';
      //     }
      //   } else {
      //     return DataHelper.employee!.accessToken;
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
