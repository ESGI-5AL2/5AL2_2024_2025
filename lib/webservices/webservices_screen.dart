import 'package:flutter/material.dart';

class WebservicesScreen extends StatelessWidget {
  const WebservicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  void getUsers() {
    final url = 'https://reqres.in/api/users?page=1&per_page=5';
  }
}
