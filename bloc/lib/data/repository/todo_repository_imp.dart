import 'package:todo_state_management/data/local/local_data_source_interface.dart';

import '../../domain/todo_entity.dart';
import '../../domain/todo_repository_interface.dart';
import '../../util/todo_error.dart';
import '../../util/todo_exception.dart';

final class TodoRepository implements ITodoRepository {
  final ILocalDataSource _localDataSource;
  // 향후 IRemoteDataSource 객체 넣기

  List<TodoEntity> _todoList = []; // 최적화

  TodoRepository(this._localDataSource) {
    _initialize();
  }

  void _initialize() async {
    try {
      List<TodoEntity> todos = await _localDataSource.loadTodos();
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
      await _localDataSource.saveTodo(todo);
    } catch (error) {
      throw TodoException(TodoError.saveError("Error adding todo: $error"));
    }
  }

  @override
  Future<void> updateTodo(TodoEntity updatedTodo) async {
    try {
      final index = _todoList.indexWhere((todo) => todo.id == updatedTodo.id);

      _todoList[index] = updatedTodo;
      await _localDataSource.updateTodo(updatedTodo);
    } catch (error) {
      throw TodoException(TodoError.saveError("Error updating todo: $error"));
    }
  }

  @override
  Future<void> deleteTodo(String id) async {
    try {
      _todoList.removeWhere((todo) => todo.id == id);
      await _localDataSource.deleteTodoById(id);
    } catch (error) {
      throw TodoException(TodoError.saveError("Error deleting todo: $error"));
    }
  }

  @override
  Future<void> clearTodos() async {
    try {
      _todoList.clear();
      await _localDataSource.clearTodos();
    } catch (error) {
      throw TodoException(TodoError.clearError("Error clearing todos: $error"));
    }
  }
}