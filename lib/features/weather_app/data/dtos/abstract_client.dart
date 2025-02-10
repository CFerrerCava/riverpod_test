import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class AbstractDioClient {
  AbstractDioClient({
    required String baseUrl,
    Map<String, String>? customHeaders,
    List<Interceptor>? customInterceptors,
    bool enableLogging = kDebugMode,
  }) : client = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            headers: {
              'Content-Type': 'application/json',
              ...?customHeaders,
            },
          ),
        ) {
    // Add default interceptors
    client.interceptors.addAll([
      if (enableLogging)
        LogInterceptor(
          responseBody: true,
          requestBody: true,
          logPrint: print,
        ),
      ...?customInterceptors,
    ]);

    // Set the transformer
    client.transformer = BackgroundTransformer();
  }
  final Dio client;
}
