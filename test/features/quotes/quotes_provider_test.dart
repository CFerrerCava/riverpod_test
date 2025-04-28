import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod_test/features/quotes/presentation/controllers/quote_provider.dart';

import 'quotes_stubs.dart';

void main() {
  late MockQuotesController mockController;

  setUp(() {
    mockController = MockQuotesController();

    quotesControllerProviderStubs(controller: mockController);
  });
  group('Quotes provider test', () {
    test('Quotes provider is dio instance', () {
      final ref = ProviderContainer();

      expect(ref.read(quotesApiProvider).runtimeType, Dio().runtimeType);
    });

    test('test quotesControllerProvider', () async {
      final ref = ProviderContainer(
        overrides: [
          quotesControllerProvider.overrideWith((ref) => mockController),
        ],
      );

      final notifier = ref.read(quotesControllerProvider.notifier);
      await notifier.getQuotes();

      verify(mockController.getQuotes).called(1);
    });
  });
}
