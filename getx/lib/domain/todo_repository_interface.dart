import '../domain/todo_entity.dart';

abstract interface class ITodoRepository {
  Stream<List<TodoEntity>> requestTodos();
  Future<void> saveTodos(List<TodoEntity> todos);
  Future<void> clearTodos(); 
}