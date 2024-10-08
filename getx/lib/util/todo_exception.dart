import 'todo_error.dart';

class TodoException implements Exception {
  final TodoError error;

  TodoException(this.error);

  @override
  String toString() => 'TodoException: $error';
}
