import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/todo_entity.dart';
import 'todo_controller.dart';
import 'todo_state.dart';

final class TodoView extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  final TodoController controller;

  TodoView(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Todo List'),
        ),
        body: Column(
          children: [
            _buildInputSection(controller),
            _buildTodoList(controller),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.clearTodos,
          child: const Icon(Icons.delete),
        ),
      ),
    );
  }

  Widget _buildInputSection(TodoController controller) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: textController,
              decoration: const InputDecoration(
                labelText: 'Enter todo',
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              final description = textController.text;
              if (description.isNotEmpty) {
                final todo = TodoEntity(description: description, id: '');
                controller.addTodo(todo);
                textController.clear();
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTodoList(TodoController controller) {
    return Expanded(
      child: Obx(() {
        switch (controller.state.value) {
          case TodoState.loading:
            return _buildLoading();
          case TodoState.error:
            return _buildError(controller.errorMessage.value);
          case TodoState.loaded:
          default:
            return _buildLoadedList(controller.todos);
        }
      }),
    );
  }

  Widget _buildLoadedList(List<TodoEntity> todos) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];
        return ListTile(
          title: Text(todo.description),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              Get.find<TodoController>().removeTodoById(todo.id);
            },
          ),
        );
      },
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
  Widget _buildError(String message) => Center(child: Text(message));
}
