import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/features/quotes/data/repositories/quotes_repository.dart';
import 'package:riverpod_test/features/quotes/domain/entities/quotes_response.dart';

class QuotesController extends StateNotifier<AsyncValue<QuotesResponse>> {
  QuotesController(this._quotesRepository) : super(const AsyncValue.loading()) {
    getQuotes();
  }

  final QuotesRepositoryImpl _quotesRepository;

  Future<void> getQuotes() async {
    try {
      state = const AsyncValue.loading();
      final quotes = await _quotesRepository.getQuotes();
      state = AsyncValue.data(quotes);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
