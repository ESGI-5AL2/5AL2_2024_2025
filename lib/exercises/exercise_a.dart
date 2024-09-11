import 'package:flutter/material.dart';

class ExerciseA extends StatelessWidget {
  const ExerciseA({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SquareButton(),
      ),
    );
  }
}

class SquareButton extends StatefulWidget {
  const SquareButton({super.key});

  @override
  State<SquareButton> createState() => _SquareButtonState();
}

class _SquareButtonState extends State<SquareButton> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: _selected ? Colors.blue : Colors.orange,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(_selected ? 20 : 0),
            bottomRight: const Radius.circular(20),
          ),
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
