import 'package:flutter/material.dart';

class ExerciseB extends StatefulWidget {
  const ExerciseB({super.key});

  @override
  State<ExerciseB> createState() => _ExerciseBState();
}

class _ExerciseBState extends State<ExerciseB> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SquareButton(
          color: _selected ? Colors.orange : Colors.blue,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTap,
        child: const Icon(Icons.draw),
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
    this.color = Colors.blue,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}
