import 'package:dio/dio.dart';
import 'package:offers_website/core/exceptions/exceptions.dart';

class AuthRepository {
  Dio dio;
  AuthRepository({required this.dio});

  Future<void> getSubjects() async {
    try {} catch (error) {
      throw ExceptionHandler(error);
    }
  }
}
