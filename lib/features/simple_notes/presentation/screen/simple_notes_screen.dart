import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/features/simple_notes/domain/entities/simple_note_model.dart';
import 'package:riverpod_test/features/simple_notes/presentation/providers/form_provider.dart';
import 'package:riverpod_test/features/simple_notes/presentation/providers/simple_notes_provider.dart';
import 'package:riverpod_test/features/simple_notes/presentation/widgets/simple_note_item.dart';

class SimpleNotesScreen extends ConsumerWidget {
  const SimpleNotesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(simpleNotesProvider);
    final titleController = ref.watch(titleProvider);
    final descriptionController = ref.watch(descriptionProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Notes'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  ref.read(simpleNotesProvider.notifier).remove(index);
                },
                child: SimpleNoteItem(
                  title: list[index].name,
                  subtitle: list[index].description,
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 5,
              ),
              itemCount: ref.watch(simpleNotesProvider).length,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    labelText: 'Title',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  controller: descriptionController,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(simpleNotesProvider.notifier).add(
                        SimpleNoteModel(
                          name: ref.read(titleProvider.notifier).state.text,
                          description:
                              ref.read(descriptionProvider.notifier).state.text,
                        ),
                      );
                  titleController.clear();
                  descriptionController.clear();
                },
                child: const Text('Push'),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
