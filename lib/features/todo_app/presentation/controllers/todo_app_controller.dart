import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/core/utils/retrofit_extension.dart';
import 'package:riverpod_test/features/todo_app/data/repositories/todo_app_repository.dart';
import 'package:riverpod_test/features/todo_app/domain/entities/todo_app_entities.dart';

class TodoAppController extends StateNotifier<List<TodoModel>> {
  TodoAppController({required this.repository}) : super([]) {
    fetchTodos();
  }
  final TodoAppRepositoryMethods repository;

  bool editMode = false;

  TodoModel? selectedTodo;

  Future<void> fetchTodos() async {
    final result = await repository.getTodos();
    if (result.isSuccessful) {
      state = [...result.data];
    }
  }

  Future<void> addTodo(TodoModel todo) async {
    final response = await repository.addTodo(todo);
    if (response.isSuccessful) {
      state = [...state, todo];
    }
  }

  Future<void> updateTodo(TodoModel todo) async {
    try {
      final response = await repository.updateTodo(todo);
      if (response.isSuccessful) {
        final index = state.indexWhere((element) => element.id == todo.id);
        state[index] = todo;
        state = [...state];
      }
    } catch (e) {
      print(e); // ignore: avoid_print
    }
  }

  Future<void> deleteTodo(TodoModel todo) async {
    final response = await repository.deleteTodo(todo.id!);
    if (response.isSuccessful) {
      state.remove(todo);
      state = [...state];
    }
  }

  Future<void> changeTodo(String text) async {
    if (editMode) {
      await updateTodo(
        TodoModel(
          description: text,
          createdAt: selectedTodo?.createdAt,
          id: selectedTodo?.id,
        ),
      );
      editMode = false;
    } else {
      await addTodo(
        TodoModel(
          description: text,
          createdAt: DateTime.now(),
        ),
      );
    }
  }
}
