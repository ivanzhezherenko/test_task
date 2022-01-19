import 'package:flutter/material.dart';
import 'package:test_task/pages/test_task_page.dart';

///Creating a MaterialApp
class TestTaskApp extends StatelessWidget {
 ///TestTaskApp class constructor
  const TestTaskApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestTaskPage(),
    );
  }
}
