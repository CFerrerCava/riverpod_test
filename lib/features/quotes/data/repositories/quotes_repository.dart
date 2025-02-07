import 'package:dio/dio.dart';
import 'package:riverpod_test/features/quotes/data/api/quotes_api.dart';
import 'package:riverpod_test/features/quotes/domain/entities/quotes_response.dart';

sealed class QuotesRepositoryMethods {
  Future<QuotesResponse> getQuotes();
}

class QuotesRepositoryImpl extends QuotesRepositoryMethods {
  QuotesRepositoryImpl(this._dio) {
    _quotesApi = QuotesApi(dio: _dio);
  }
  final Dio _dio;
  late final QuotesApi _quotesApi;

  @override
  Future<QuotesResponse> getQuotes() {
    return _quotesApi.getQuotes();
  }
}
