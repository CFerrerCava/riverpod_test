import 'package:flutter_test/flutter_test.dart';

import '../../helpers/helpers.dart';
import 'quotes_stubs.dart';

void main() {
  late MockQuotesRepository mockQuotesRespository;
  setUp(() {
    mockQuotesRespository = MockQuotesRepository();
    quotesRepositoryImplStubs(repository: mockQuotesRespository);
  });
  group('Repository test', () {
    test('Get quotes', () async {
      final response = await mockQuotesRespository.getQuotes();
      expect(response, mockQuotesResponse);
    });
  });
}
