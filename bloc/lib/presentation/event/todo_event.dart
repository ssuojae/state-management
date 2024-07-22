import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/todo_entity.dart';

part 'todo_event.freezed.dart';

@freezed
abstract class TodoEvent with _$TodoEvent {
  const factory TodoEvent.initialize() = Initialize;
  const factory TodoEvent.add(TodoEntity todo) = AddTodo;
  const factory TodoEvent.remove(String id) = RemoveTodo;
  const factory TodoEvent.clear() = ClearTodos;
}