import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/todo_entity.dart';

part 'todo_state.freezed.dart';

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState.loading() = TodoLoading;
  const factory TodoState.loaded(List<TodoEntity> todos) = TodoLoaded;
  const factory TodoState.error(String message) = TodoErrorState;
}
