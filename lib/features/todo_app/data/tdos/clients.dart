import 'package:dio/dio.dart';

final todoAppClient =
    Dio(BaseOptions(baseUrl: 'https://668632d083c983911b0127c1.mockapi.io/'))
      ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
