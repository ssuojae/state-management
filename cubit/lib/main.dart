import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'domain/todo_repository_interface.dart';
import 'data/todo_repository.dart';
import 'presentation/view/todo_view.dart';
import 'presentation/viewmodel/todo_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  final todoRepository = TodoRepository(sharedPreferences);
  
  runApp(MyApp(todoRepository: todoRepository));
}

final class MyApp extends StatelessWidget {
  final ITodoRepository todoRepository;

  const MyApp({super.key, required this.todoRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Todo App',
      home: BlocProvider(
        create: (context) => TodoCubit(todoRepository),
        child: const TodoView(),
      ),
    );
  }
}