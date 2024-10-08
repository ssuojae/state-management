import 'package:flutter/material.dart';
import '../../domain/todo_entity.dart';
import '../../domain/todo_repository_interface.dart';
import 'todo_state.dart';

final class TodoViewModel with ChangeNotifier {
  final ITodoRepository _todoRepository;
  TodoState _state = const TodoLoading();

  TodoState get state => _state;

  TodoViewModel(this._todoRepository) {
    _initialize();
  }

  Future<void> _initialize() async {
    try {
      _state = const TodoLoading();
      notifyListeners();
      final todos = await _todoRepository.fetchTodos();
      _state = TodoLoaded(todos);
      notifyListeners();
    } catch (error) {
      _state = TodoErrorState("Error fetching todos: $error");
      notifyListeners();
    }
  }

  Future<void> addTodo(TodoEntity todo) async {
    if (_state is TodoLoaded) {
      try {
        await _todoRepository.addTodo(todo);
        final todos = await _todoRepository.fetchTodos();
        _state = TodoLoaded(todos);
        notifyListeners();
      } catch (error) {
        _state = TodoErrorState('Error adding todo: $error');
        notifyListeners();
      }
    }
  }

  Future<void> removeTodo(String id) async {
    if (_state is TodoLoaded) {
      try {
        await _todoRepository.deleteTodo(id);
        final todos = await _todoRepository.fetchTodos();
        _state = TodoLoaded(todos);
        notifyListeners();
      } catch (error) {
        _state = TodoErrorState('Error removing todo: $error');
        notifyListeners();
      }
    }
  }

  Future<void> clearTodos() async {
    try {
      await _todoRepository.clearTodos();
      _state = const TodoLoaded([]);
      notifyListeners();
    } catch (error) {
      _state = TodoErrorState('Error clearing todos: $error');
      notifyListeners();
    }
  }
}
