import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/todo_entity.dart';
import '../viewmodel/todo_viewmodel.dart';
import '../viewmodel/todo_state.dart';

final class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController todoController = TextEditingController();

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
            _buildInputSection(context, todoController),
            _buildTodoList(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.delete),
          onPressed: () {
            context.read<TodoViewModel>().clearTodos();
          },
        ),
      ),
    );
  }

  Widget _buildInputSection(BuildContext context, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Enter todo',
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              final description = controller.text;
              if (description.isNotEmpty) {
                final todo = TodoEntity(description: description, id: '');
                context.read<TodoViewModel>().addTodo(todo);
                controller.clear();
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTodoList() {
    return Expanded(
      child: Consumer<TodoViewModel>(
        builder: (context, viewModel, _) {
          return viewModel.state.when(
            loading: () => _buildLoading(),
            loaded: (todos) => _buildLoadedList(context, todos),
            error: (message) => _buildError(message),
          );
        },
      ),
    );
  }

  Widget _buildLoadedList(BuildContext context, List<TodoEntity> todos) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];
        return ListTile(
          title: Text(todo.description),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              context.read<TodoViewModel>().removeTodo(todo.id);
            },
          ),
        );
      },
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
  Widget _buildError(String message) => Center(child: Text(message));
}
