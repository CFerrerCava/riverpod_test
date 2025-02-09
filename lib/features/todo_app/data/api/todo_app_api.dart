import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_test/features/todo_app/domain/entities/todo_app_entities.dart';

part 'todo_app_api.g.dart';

@RestApi(baseUrl: '/todo')
abstract class TodoAppApi {
  factory TodoAppApi(Dio dio, {String baseUrl}) = _TodoAppApi;

  @GET('')
  Future<HttpResponse<List<TodoModel>>> getTodos();

  @POST('')
  Future<HttpResponse<dynamic>> addTodo(@Body() TodoModel todo);

  @PUT('/{id}')
  Future<HttpResponse<dynamic>> updateTodo(
    @Body() TodoModel todo,
    @Path() String id,
  );

  @DELETE('/{id}')
  Future<HttpResponse<dynamic>> deleteTodo(
    @Path() String id,
  );
}
