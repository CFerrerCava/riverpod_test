import 'package:dio/dio.dart';

final quotesDioClient = Dio(
  BaseOptions(
    contentType: 'application/json',
    baseUrl: 'https://programming-quotes-api.azurewebsites.net/api',
  ),
);
