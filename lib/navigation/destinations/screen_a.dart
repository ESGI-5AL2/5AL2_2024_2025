import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).pop(42),
          child: const Text('Go back'),
        ),
      ),
    );
  }
}
