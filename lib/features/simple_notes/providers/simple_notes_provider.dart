import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/features/simple_notes/domain/entities.dart';

final simpleNotesProvider =
    StateNotifierProvider<SimpleNotesNotifier, List<SimpleNoteModel>>((ref) {
  return SimpleNotesNotifier([]);
});

class SimpleNotesNotifier extends StateNotifier<List<SimpleNoteModel>> {
  SimpleNotesNotifier(super.state);

  void add(SimpleNoteModel note) {
    if (note.name.isNotEmpty && note.description.isNotEmpty) {
      state = [...state, note];
    }
  }

  void remove(int index) {
    state.removeAt(index);
    state = [...state];
  }
}
