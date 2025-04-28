import 'package:mocktail/mocktail.dart';
import 'package:riverpod_test/features/quotes/data/api/quotes_api.dart';
import 'package:riverpod_test/features/quotes/data/repositories/quotes_repository.dart';
import 'package:riverpod_test/features/quotes/presentation/controllers/quotes_controller.dart';

import '../../helpers/helpers.dart';

// Add mock classes here
class MockQuotesApi extends Mock implements QuotesApi {}

class MockQuotesRepository extends Mock implements QuotesRepositoryImpl {}

class MockQuotesController extends Mock implements QuotesController {}

// Add stub functions here
void quotesApiStubs({required MockQuotesApi quotesApi}) {
  when(quotesApi.getQuotes).thenAnswer((_) async => mockQuotesResponse);
}

void quotesRepositoryImplStubs({required MockQuotesRepository repository}) {
  when(repository.getQuotes).thenAnswer((_) async => mockQuotesResponse);
}

void quotesControllerProviderStubs({required MockQuotesController controller}) {
  when(() => controller.getQuotes()).thenAnswer((_) async {});
}
