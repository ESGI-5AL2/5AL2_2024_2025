import 'package:al2_2024/exercises/exercise_a.dart';
import 'package:al2_2024/home.dart';
import 'package:al2_2024/layouts/layouts.dart';
import 'package:al2_2024/lists/lists_screen.dart';
import 'package:al2_2024/webservices/webservices_screen.dart';
import 'package:flutter/material.dart';

import 'exercises/exercise_b.dart';
import 'exercises/exercise_c.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayMedium: TextStyle(
            fontSize: 24,
            color: Colors.orange,
          ),
        ),
      ),
      home: const WebservicesScreen(),
    );
  }
}
