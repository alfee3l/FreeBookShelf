import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  const Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('eceive timeout with ApiServer');
      // case DioExceptionType.badCertificate:
      //   // TODO: Handle this case.
      //   throw UnimplementedError();
      case DioExceptionType.badResponse:
        return ServerFailure.formResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');

      case DioExceptionType.connectionError:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
         return ServerFailure('Unexpected Error,please try again');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error,please try again');
      default:
        return ServerFailure('Opps there waw an error ,please try later');
    }
  }

  factory ServerFailure.formResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 400) {
      return ServerFailure('screen note found,please try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error ,please try later ');
    } else {
      return ServerFailure('Opps there waw an error ,please try later');
    }
  }
}
