import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/features/quotes/data/dtos/dtos.dart';
import 'package:riverpod_test/features/quotes/data/repositories/quotes_repository.dart';
import 'package:riverpod_test/features/quotes/domain/entities/quotes_response.dart';
import 'package:riverpod_test/features/quotes/presentation/controllers/quotes_controller.dart';

final quotesApiProvider = Provider<Dio>(
  (ref) => quotesDioClient,
);

final quotesRepositoryProvider = Provider<QuotesRepositoryImpl>(
  (ref) => QuotesRepositoryImpl(ref.watch(quotesApiProvider)),
);

final quotesControllerProvider =
    StateNotifierProvider<QuotesController, AsyncValue<QuotesResponse>>(
  (ref) => QuotesController(ref.watch(quotesRepositoryProvider)),
);
