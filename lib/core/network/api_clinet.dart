import 'package:dio/dio.dart';

class ApiClinet {
  Dio dio;
  ApiClinet()
    : dio = Dio(BaseOptions(baseUrl: 'https://api.escuelajs.co/api/v1/'));
}
// 'https://api.escuelajs.co/api/v1/'
