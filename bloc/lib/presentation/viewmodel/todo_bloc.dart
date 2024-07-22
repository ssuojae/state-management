import 'package:bloc/bloc.dart';

import '../../domain/todo_repository_interface.dart';
import '../event/todo_event.dart';
import '../state/todo_state.dart';

final class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final ITodoRepository _todoRepository;

  TodoBloc(this._todoRepository) : super(const TodoLoading()) {
    _setupEventHandlers();
    add(const Initialize());
  }

  void _setupEventHandlers() {
    on<Initialize>(_onInitialize);
    on<AddTodo>(_onAddTodo);
    on<RemoveTodo>(_onRemoveTodo);
    on<ClearTodos>(_onClearTodos);
  }

  void _onInitialize(Initialize event, Emitter<TodoState> emit) async {
    try {
      emit(const TodoLoading());
      final todos = await _todoRepository.fetchTodos();
      emit(TodoLoaded(todos));
    } catch (error) {
      emit(TodoErrorState("Error fetching todos: $error"));
    }
  }

  void _onAddTodo(AddTodo event, Emitter<TodoState> emit) async {
    if (state is TodoLoaded) {
      try {
        await _todoRepository.addTodo(event.todo);
        final todos = await _todoRepository.fetchTodos();
        emit(TodoLoaded(todos));
      } catch (error) {
        emit(TodoErrorState('Error adding todo: $error'));
      }
    }
  }

  void _onRemoveTodo(RemoveTodo event, Emitter<TodoState> emit) async {
    if (state is TodoLoaded) {
      try {
        await _todoRepository.deleteTodo(event.id);
        final todos = await _todoRepository.fetchTodos();
        emit(TodoLoaded(todos));
      } catch (error) {
        emit(TodoErrorState('Error removing todo: $error'));
      }
    }
  }

  void _onClearTodos(ClearTodos event, Emitter<TodoState> emit) async {
    try {
      await _todoRepository.clearTodos();
      emit(const TodoLoaded([]));
    } catch (error) {
      emit(TodoErrorState('Error clearing todos: $error'));
    }
  }
}