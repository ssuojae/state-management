import 'package:get/get.dart';

import '../domain/todo_entity.dart';
import '../domain/todo_repository_interface.dart';
import 'todo_state.dart';

final class TodoController extends GetxController {
  final ITodoRepository _todoRepository;

  TodoController(this._todoRepository);

  var todos = <TodoEntity>[].obs;
  var state = TodoState.loading.obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    _initialize();
  }

  void _initialize() async {
    state.value = TodoState.loading;
    _fetchTodos();
  }

  void _fetchTodos() {
    _todoRepository.requestTodos().listen(
      (todoList) {
        _handleTodoList(todoList);
      },
      onError: (error) {
        _handleError(error);
      },
    );
  }

  void _handleTodoList(List<TodoEntity> todoList) {
    todos.assignAll(todoList);
    state.value = TodoState.loaded;
  }

  void _handleError(dynamic error) {
    errorMessage.value = error.toString();
    state.value = TodoState.error;
  }

  Future<void> addTodo(TodoEntity todo) async {
    final updatedTodos = List<TodoEntity>.from(todos)..add(todo);
    await _saveTodos(updatedTodos);
  }

  Future<void> removeTodoById(String id) async {
    final updatedTodos = todos.where((todo) => todo.id != id).toList();
    await _saveTodos(updatedTodos);
  }

  Future<void> clearTodos() async {
    try {
      await _todoRepository.clearTodos();
      todos.clear();
      state.value = TodoState.loaded;
    } catch (error) {
      _handleError(error);
    }
  }

  Future<void> _saveTodos(List<TodoEntity> todos) async {
    try {
      await _todoRepository.saveTodos(todos);
      this.todos.assignAll(todos);
      state.value = TodoState.loaded;
    } catch (error) {
      _handleError(error);
    }
  }
}