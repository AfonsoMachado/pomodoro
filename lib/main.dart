import 'package:flutter/material.dart';
import 'package:pomodoro/components/pomodoro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pomodoro',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
            backgroundColor: const MaterialStatePropertyAll(Colors.blue),
          ),
        ),
        useMaterial3: true,
      ),
      home: const Pomodoro(),
      debugShowCheckedModeBanner: false,
    );
  }
}
