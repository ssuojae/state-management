import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../domain/todo_entity.dart';
import '../domain/todo_repository_interface.dart';
import '../util/todo_exception.dart';
import '../util/todo_error.dart';

final class TodoRepository implements ITodoRepository {
  final SharedPreferences prefs;
  final _todoController = StreamController<List<TodoEntity>>.broadcast();

  TodoRepository(this.prefs) {
    _initialize();
  }

  Future<void> _initialize() async {
    try {
      List<TodoEntity> todos = await _loadTodos();
      _todoController.add(todos);
    } catch (error) {
      _todoController.addError(TodoException(TodoError.fetchError("Error fetching todos: $error")));
    }
  }

  @override
  Stream<List<TodoEntity>> requestTodos() async* {
    yield await _loadTodos();
    yield* _todoController.stream;
  }

  @override
  Future<void> saveTodos(List<TodoEntity> todos) async {
    try {
      List<Map<String, dynamic>> jsonList = todos.map((todo) => todo.toJson()).toList();
      await prefs.setString('todos', json.encode(jsonList));
      _todoController.add(todos);
    } catch (error) {
      _todoController.addError(TodoException(TodoError.saveError("Error saving todos: $error")));
      throw TodoException(TodoError.saveError("Error saving todos: $error"));
    }
  }

  @override
  Future<void> clearTodos() async {
    try {
      await prefs.remove('todos');
      _todoController.add([]);
    } catch (error) {
      _todoController.addError(TodoException(TodoError.clearError("Error clearing todos: $error")));
      throw TodoException(TodoError.clearError("Error clearing todos: $error"));
    }
  }

  Future<List<TodoEntity>> _loadTodos() async {
    try {
      String? jsonString = _getTodosString(prefs);
      if (_isValidJsonString(jsonString)) {
        return _convertJsonListToTodos(json.decode(jsonString!));
      }
    } catch (error) {
      throw TodoException(TodoError.loadError("Error loading todos: $error"));
    }
    return [];
  }

  String? _getTodosString(SharedPreferences prefs) {
    if (prefs.containsKey('todos')) {
      return prefs.getString('todos');
    }
    return null;
  }

  bool _isValidJsonString(String? jsonString) {
    return jsonString != null && jsonString.isNotEmpty;
  }

  List<TodoEntity> _convertJsonListToTodos(List<dynamic> jsonList) {
    return jsonList.map((item) => TodoEntity.fromJson(item as Map<String, dynamic>)).toList();
  }
}