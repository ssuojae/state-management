import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'binding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final todoBinding = TodoBinding();
  await todoBinding.setupInitialDependency();
  runApp(MyApp(todoBinding));
}

final class MyApp extends StatelessWidget {
  final TodoBinding todoBinding;
  const MyApp(this.todoBinding, {super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Todo App',
      home: todoBinding.getView(),
    );
  }
}
