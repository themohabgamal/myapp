import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  //private constructor to prevent instantiation
  DioFactory._();
  static Dio? dio;
  static getDio() {
    Duration timeOut = const Duration(seconds: 20);
    if (dio == null) {
      dio = Dio();
      dio?.options.connectTimeout = timeOut;
      dio?.options.receiveTimeout = timeOut;
      dioLogger();
      return dio;
    } else {
      return dio;
    }
  }

  static void dioLogger() {
    dio?.interceptors
        .add(PrettyDioLogger(requestBody: true, responseBody: true));
  }
}
