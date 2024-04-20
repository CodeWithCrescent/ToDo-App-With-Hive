import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_hive/pages/home_page.dart';
import 'package:todo_hive/utils/colors.dart';

void main() async {
  // init the hive
  await Hive.initFlutter();

// open box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());

  // await Hive.close();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // I ended at 9.25
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: GlobalColors.mainColor,
          foregroundColor: GlobalColors.whiteColor,
          centerTitle: true,
          // elevation: 0,
        ),
      ),
      home: const HomePage(),
    );
  }
}
