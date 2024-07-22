import '../../../domain/todo_entity.dart';

abstract interface class ILocalDataSource {
  Future<void> saveTodos(List<TodoEntity> todos); // 전체 데이터를 저장
  Future<void> clearTodos(); // 전체 데이터를 삭제
  Future<List<TodoEntity>> loadTodos(); // 전체 데이터를 로드

  Future<void> saveTodo(TodoEntity todo); // 단일 할일을 저장
  Future<void> updateTodo(TodoEntity updatedTodo); // 단일 할일을 업데이트
  Future<void> deleteTodoById(String id); // 단일 할일을 삭제
}