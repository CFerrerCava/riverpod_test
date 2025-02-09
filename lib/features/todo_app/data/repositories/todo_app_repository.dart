import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_test/features/todo_app/data/api/todo_app_api.dart';
import 'package:riverpod_test/features/todo_app/domain/entities/todo_app_entities.dart';

sealed class TodoAppRepositoryMethods {
  Future<HttpResponse<List<TodoModel>>> getTodos();
  Future<HttpResponse<dynamic>> addTodo(TodoModel todo);
  Future<HttpResponse<dynamic>> updateTodo(TodoModel todo);
  Future<HttpResponse<dynamic>> deleteTodo(String id);
}

class TodoAppRepositoryImpl extends TodoAppRepositoryMethods {
  TodoAppRepositoryImpl(this._dio) {
    _todoAppApi = TodoAppApi(_dio);
  }
  final Dio _dio;
  late final TodoAppApi _todoAppApi;

  @override
  Future<HttpResponse<List<TodoModel>>> getTodos() {
    return _todoAppApi.getTodos();
  }

  @override
  Future<HttpResponse<dynamic>> addTodo(TodoModel todo) {
    return _todoAppApi.addTodo(todo);
  }

  @override
  Future<HttpResponse<dynamic>> deleteTodo(String id) {
    return _todoAppApi.deleteTodo(id);
  }

  @override
  Future<HttpResponse<dynamic>> updateTodo(TodoModel todo) {
    return _todoAppApi.updateTodo(todo, todo.id!);
  }
}
