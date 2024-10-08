import 'package:bloc/bloc.dart';
import '../../domain/todo_entity.dart';
import '../../domain/todo_repository_interface.dart';
import 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  final ITodoRepository _todoRepository;

  TodoCubit(this._todoRepository) : super(const TodoLoading()) {
    _initialize();
  }

  void _initialize() async {
    try {
      emit(const TodoLoading());
      _todoRepository.requestTodos().listen((todos) {
        emit(TodoLoaded(todos));
      }, onError: (error) {
        emit(TodoErrorState(error.toString()));
      },);
    } catch (error) {
      emit(TodoErrorState('Error initializing: $error'));
    }
  }

  Future<void> addTodo(TodoEntity todo) async {
    if (state is TodoLoaded) {
      final currentState = state as TodoLoaded;
      final updatedTodos = List<TodoEntity>.from(currentState.todos)..add(todo);
      await _saveTodos(updatedTodos);
    }
  }

  Future<void> removeTodoById(String id) async {
    if (state is TodoLoaded) {
      final currentState = state as TodoLoaded;
      final updatedTodos = currentState.todos.where((todo) => todo.id != id).toList();
      await _saveTodos(updatedTodos);
    }
  }

  Future<void> _saveTodos(List<TodoEntity> todos) async {
    try {
      await _todoRepository.saveTodos(todos);
      emit(TodoLoaded(todos));
    } catch (error) {
      emit(TodoErrorState('Error saving todos: $error'));
    }
  }

  Future<void> clearTodos() async {
    try {
      await _todoRepository.clearTodos();
      emit(const TodoLoaded([]));
    } catch (error) {
      emit(TodoErrorState('Error clearing todos: $error'));
    }
  }
}
