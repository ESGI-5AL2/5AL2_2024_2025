import 'package:flutter/material.dart';

class ExerciseC extends StatefulWidget {
  const ExerciseC({super.key});

  @override
  State<ExerciseC> createState() => _ExerciseCState();
}

class _ExerciseCState extends State<ExerciseC> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _selected ? Colors.orange : Colors.white,
      body: Center(
        child: SquareButton(
          onTap: _onTap,
        ),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _selected = !_selected;
    });
  }
}

class SquareButton extends StatelessWidget {
  const SquareButton({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
    );
  }
}
