import '../../domain/todo_entity.dart';
import '../../domain/todo_repository_interface.dart';
import '../../util/todo_error.dart';
import '../../util/todo_exception.dart';
import '../service/database/todo_storage_service_interface.dart';

final class TodoRepository implements ITodoRepository {
  final ITodoStorageService _localStorageService;
  List<TodoEntity> _todoList = [];

  TodoRepository(this._localStorageService) {
    _initialize();
  }

  void _initialize() async {
    try {
      List<TodoEntity> todos = await _localStorageService.loadTodos();
      _todoList = todos;
    } catch (error) {
      throw TodoException(TodoError.loadError("Error initialize todo: $error"));
    }
  }

  @override
  Future<List<TodoEntity>> fetchTodos() async {
    return _todoList;
  }

  @override
  Future<void> addTodo(TodoEntity todo) async {
    try {
      _todoList.add(todo);
      await _localStorageService.saveTodo(todo); 
    } catch (error) {
      throw TodoException(TodoError.saveError("Error adding todo: $error"));
    }
  }

  @override
  Future<void> updateTodo(TodoEntity updatedTodo) async {
    try {
      final index = _todoList.indexWhere((todo) => todo.id == updatedTodo.id);
      if (index != -1) {
        _todoList[index] = updatedTodo;
        await _localStorageService.updateTodo(updatedTodo); 
      }
    } catch (error) {
      throw TodoException(TodoError.saveError("Error updating todo: $error"));
    }
  }

  @override
  Future<void> deleteTodo(String id) async {
    try {
      _todoList.removeWhere((todo) => todo.id == id);
      await _localStorageService.deleteTodoById(id); 
    } catch (error) {
      throw TodoException(TodoError.saveError("Error deleting todo: $error"));
    }
  }

  @override
  Future<void> clearTodos() async {
    try {
      _todoList.clear();
      await _localStorageService.clearTodos();
    } catch (error) {
      throw TodoException(TodoError.clearError("Error clearing todos: $error"));
    }
  }
}
