import 'package:flutter_test/flutter_test.dart';
import '../../helpers/mock_objects.dart';
import 'quotes_stubs.dart';

void main() {
  late MockQuotesApi mockQuotesApi;

  setUp(() {
    mockQuotesApi = MockQuotesApi();
    quotesApiStubs(quotesApi: mockQuotesApi);
  });

  group('Quotes test', () {
    test('test name', () async {
      final response = await mockQuotesApi.getQuotes();
      expect(response, mockQuotesResponse);
    });
  });
}
