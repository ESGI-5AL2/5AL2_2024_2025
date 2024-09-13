import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  static void navigateTo(BuildContext context, String argument) {
    Navigator.of(context).pushNamed(
      '/screenC',
      arguments: argument,
    );
  }

  const ScreenC({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen C with id $id'),
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
