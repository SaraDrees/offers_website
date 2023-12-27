// ignore_for_file: avoid_dynamic_calls

import 'dart:io';

import 'package:dio/dio.dart';

class CustomException implements Exception {
  final CustomError error;
  final String message;

  CustomException._(this.error, this.message);

  @override
  String toString() => "message : $error";
}

class ExceptionHandler {
  factory ExceptionHandler(dynamic error) {
    switch (error.runtimeType) {
      case FormatException:
        throw CustomException._(CustomError.formatException, error.toString());
      case DioError:
        if (error.type == DioErrorType.connectTimeout ||
            error.type == DioErrorType.receiveTimeout ||
            error.type == DioErrorType.sendTimeout ||
            error.type == DioErrorType.cancel ||
            (error.message != null &&
                error.message.contains("SocketException"))) {
          throw CustomException._(CustomError.noInternet, error.toString());
        } else {
          if (error.response != null) {
            if (error.response!.statusCode == 404) {
              if (error.response!.data["message"] == "0") {
                throw CustomException._(CustomError.notFound, error.toString());
              }
            }
          } else {
            throw CustomException._(CustomError.unKnown, error.toString());
          }
        }
        throw CustomException._(CustomError.unKnown, error.toString());
      case SocketException:
        throw CustomException._(CustomError.noInternet, error.toString());
      case HttpException:
        throw CustomException._(CustomError.noInternet, error.toString());
      default:
        throw CustomException._(CustomError.unKnown, error.toString());
    }
  }
}

enum CustomError {
  noInternet,
  conflict,
  unKnown,
  alreadyExists,
  notFound,
  formatException,
  badRequest,
  unauthorized,
  processNotAvailable,
  wrongCode,
  nameAlreadyExists,
  noResults,
  alreadySubscribedToCourse,
  alreadySubscribedToModule,
  insufficientBalance,
}
