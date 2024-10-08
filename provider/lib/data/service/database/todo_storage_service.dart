import 'dart:convert';
import '../../../domain/todo_entity.dart';
import '../../../util/todo_error.dart';
import '../../../util/todo_exception.dart';
import 'shared_preference_service.dart';
import 'todo_storage_service_interface.dart';

final class TodoStorageService implements ITodoStorageService {
  final SharedPreferencesService prefsService;

  TodoStorageService(this.prefsService);

  @override
  Future<List<TodoEntity>> loadTodos() async {
    try {
      String? jsonString = prefsService.getString('todos');
      if (_isValidJsonString(jsonString)) {
        return _convertJsonListToTodos(json.decode(jsonString!));
      }
    } catch (error) {
      throw TodoException(TodoError.loadError("Error loading todos: $error"));
    }
    return [];
  }

  @override
  Future<void> saveTodos(List<TodoEntity> todos) async {
    try {
      List<Map<String, dynamic>> jsonList = todos.map((todo) => todo.toJson()).toList();
      await prefsService.setString('todos', json.encode(jsonList));
    } catch (error) {
      throw TodoException(TodoError.saveError("Error saving todos: $error"));
    }
  }
  
  @override
  Future<void> saveTodo(TodoEntity todo) async {
    try {
      List<TodoEntity> currentTodos = await loadTodos();
      currentTodos.add(todo);
      await saveTodos(currentTodos);
    } catch (error) {
      throw TodoException(TodoError.saveError("Error saving todo: $error"));
    }
  }

  @override
  Future<void> updateTodo(TodoEntity updatedTodo) async {
    try {
      List<TodoEntity> currentTodos = await loadTodos();
      final index = currentTodos.indexWhere((todo) => todo.id == updatedTodo.id);
      if (index != -1) {
        currentTodos[index] = updatedTodo;
        await saveTodos(currentTodos);
      }
    } catch (error) {
      throw TodoException(TodoError.saveError("Error updating todo: $error"));
    }
  }

  @override
  Future<void> deleteTodoById(String id) async {
    try {
      List<TodoEntity> currentTodos = await loadTodos();
      currentTodos.removeWhere((todo) => todo.id == id);
      await saveTodos(currentTodos);
    } catch (error) {
      throw TodoException(TodoError.saveError("Error deleting todo: $error"));
    }
  }

  @override
  Future<void> clearTodos() async {
    try {
      await prefsService.remove('todos');
    } catch (error) {
      throw TodoException(TodoError.clearError("Error clearing todos: $error"));
    }
  }

  bool _isValidJsonString(String? jsonString) {
    return jsonString != null && jsonString.isNotEmpty;
  }

  List<TodoEntity> _convertJsonListToTodos(List<dynamic> jsonList) {
    return jsonList.map((item) => TodoEntity.fromJson(item as Map<String, dynamic>)).toList();
  }
}
