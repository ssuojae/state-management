import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'data/service/database/shared_preference_service.dart';
import 'data/service/database/todo_storage_service.dart';
import 'data/repository/todo_repository.dart';
import 'presentation/view/todo_view.dart';
import 'presentation/viewmodel/todo_viewmodel.dart';
import 'domain/todo_repository_interface.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  

  final prefs = await SharedPreferences.getInstance();
  final sharedPreferencesService = SharedPreferencesService(prefs);
  final todoStorageService = TodoStorageService(sharedPreferencesService);
  final todoService = TodoRepository(todoStorageService);
  
  runApp(MyApp(todoRepository: todoService));
}

final class MyApp extends StatelessWidget {
  final ITodoRepository todoRepository;

  const MyApp({super.key, required this.todoRepository});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TodoViewModel(todoRepository)),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo App',
        home: TodoView(),
      ),
    );
  }
}
