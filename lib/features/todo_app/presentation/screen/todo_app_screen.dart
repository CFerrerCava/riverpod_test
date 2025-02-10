import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/features/todo_app/presentation/provider/todo_app_provider.dart';

class TodoAppScreen extends ConsumerWidget {
  const TodoAppScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoAppControllerNotifier);
    final descriptionController = ref.watch(descriptionProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                title: Text('Todo ${todos[index].description}'),
                leading: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    descriptionController.text = todos[index].description!;
                    ref.read(todoAppControllerNotifier.notifier)
                      ..editMode = true
                      ..selectedTodo = todos[index];
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    ref
                        .read(todoAppControllerNotifier.notifier)
                        .deleteTodo(todos[index]);
                  },
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 5,
              ),
              itemCount: todos.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    hintText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    ref
                        .read(todoAppControllerNotifier.notifier)
                        .changeTodo(descriptionController.text)
                        .then((onValue) {
                      descriptionController.clear();
                    });
                  },
                  child: const Text('Add Todo'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
