import 'package:flutter/material.dart';

class ExerciseA extends StatelessWidget {
  const ExerciseA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SquareButton(),
      ),
    );
  }
}

class SquareButton extends StatelessWidget {
  const SquareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    );
  }
}
