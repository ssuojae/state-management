import 'todo_entity.dart';

abstract interface class ITodoRepository{
  Future<List<TodoEntity>> fetchTodos();
  Future<void> addTodo(TodoEntity todo);
  Future<void> updateTodo(TodoEntity updatedTodo);
  Future<void> deleteTodo(String id);
  Future<void> clearTodos();
}
