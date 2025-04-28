import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_test/features/simple_notes/domain/entities/simple_note_model.dart';
import 'package:riverpod_test/features/simple_notes/presentation/providers/simple_notes_provider.dart';

import '../../helpers/helpers.dart';

void main() {
  group('simple notes test', () {
    test('initial state', () {
      final ref = ProviderContainer();
      final state = ref.read(simpleNotesProvider);
      expect(state, <SimpleNoteModel>[]);
    });
    test('add test', () {
      final ref = ProviderContainer();
      ref.read(simpleNotesProvider.notifier).add(mockSimpleNote);

      expect(ref.read(simpleNotesProvider), [mockSimpleNote]);
      expect(ref.read(simpleNotesProvider).isNotEmpty, true);
    });

    test('remove test', () {
      final ref = ProviderContainer();
      ref.read(simpleNotesProvider.notifier).add(mockSimpleNote);
      expect(ref.read(simpleNotesProvider).isNotEmpty, true);
      ref.read(simpleNotesProvider.notifier).remove(0);
      expect(ref.read(simpleNotesProvider), <SimpleNoteModel>[]);
    });
  });
}
