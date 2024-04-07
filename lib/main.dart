import 'package:flutter/material.dart';
import 'package:todo_hive/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.yellow,
          centerTitle: true,
          // elevation: 0,
        ),
      ),
      home: const HomePage(),
    );
  }
}
