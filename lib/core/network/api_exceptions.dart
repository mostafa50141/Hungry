import 'package:dio/dio.dart';
import 'package:hungry/core/network/api_error.dart';

class ApiExceptions {
  static ApiError handleError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectionTimeout:
        return ApiError(message: 'Bad Connection');
      case DioExceptionType.badResponse:
        return ApiError(message: error.toString());
      case DioExceptionType.sendTimeout:
        throw UnimplementedError();
      case DioExceptionType.receiveTimeout:
        throw UnimplementedError();
      case DioExceptionType.badCertificate:
        throw UnimplementedError();
      case DioExceptionType.cancel:
        throw UnimplementedError();
      case DioExceptionType.connectionError:
        throw UnimplementedError();
      case DioExceptionType.unknown:
        throw UnimplementedError();

      /*default:
        return ApiError(message: 'something went wrong');
   */
    }
  }
}
