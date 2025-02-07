import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_test/features/quotes/domain/entities/quotes_response.dart';

class QuotesApi {
  QuotesApi({Dio? dio}) : _dio = dio ?? Dio();
  final Dio _dio;

  Future<QuotesResponse> getQuotes() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/quotes/random',
      );

      if (response.statusCode != HttpStatus.ok) {
        throw Exception('Failed to fetch quotes: ${response.statusCode}');
      }

      return QuotesResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw Exception('Failed to fetch quotes: ${e.message}');
    }
  }
}
