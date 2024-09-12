import 'package:flutter/material.dart';

class RedCircle extends StatelessWidget {
  const RedCircle({
    super.key,
    required this.value,
  });

  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      child: Center(
        child: Text('$value'),
      ),
    );
  }
}
