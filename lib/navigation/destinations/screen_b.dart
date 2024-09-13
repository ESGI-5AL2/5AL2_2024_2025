import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen B'),
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
