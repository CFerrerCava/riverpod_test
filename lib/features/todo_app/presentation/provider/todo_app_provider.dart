import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/features/todo_app/data/repositories/todo_app_repository.dart';
import 'package:riverpod_test/features/todo_app/data/tdos/clients.dart';
import 'package:riverpod_test/features/todo_app/domain/entities/todo_app_entities.dart';
import 'package:riverpod_test/features/todo_app/presentation/controllers/todo_app_controller.dart';

final apiClientProvider = Provider<Dio>(
  (ref) => todoAppClient,
);

final repositoryProvier = Provider<TodoAppRepositoryImpl>(
  (ref) => TodoAppRepositoryImpl(todoAppClient),
);

final todoAppControllerNotifier =
    StateNotifierProvider<TodoAppController, List<TodoModel>>(
  (ref) => TodoAppController(repository: ref.read(repositoryProvier)),
);

final descriptionProvider =
    StateProvider<TextEditingController>((ref) => TextEditingController());
