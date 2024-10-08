import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../domain/todo_repository_interface.dart';
import '../data/todo_repository.dart';
import 'presentation/todo_controller.dart';
import 'presentation/todo_view.dart';

final class TodoBinding  {

  Future<void> setupInitialDependency() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    late ITodoRepository todoRepository = TodoRepository(sharedPreferences);
    late TodoController todoController = TodoController(todoRepository);
    late TodoView todoView = TodoView(todoController);

    Get.put(todoRepository);
    Get.put(todoController);
    Get.put(todoView);
  }

  Widget getView() {
    return Get.find<TodoView>();
  }
}
