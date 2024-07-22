import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/local/data_source/local_data_source_imp.dart';
import 'data/local/service/shared_preference_service.dart';
import 'data/repository/todo_repository_imp.dart';
import 'presentation/viewmodel/bloc/todo_bloc.dart';
import 'presentation/view/todo_view.dart';
import 'domain/todo_repository_interface.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final sharedPreferencesService = SharedPreferencesService(prefs);
  final localDataSource = LocalDataSource(sharedPreferencesService);
  final todoService = TodoRepository(localDataSource);
  
  runApp(MyApp(todoRepository: todoService));
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
        create: (context) => TodoBloc(todoRepository),
        child: const TodoView(),
      ),
    );
  }
}