import 'package:al2_2024/webservices/app_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class WebservicesScreen extends StatelessWidget {
  const WebservicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _getUsers,
          child: const Text('Coucou'),
        ),
      ),
    );
  }

  void _getUsers() async {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://reqres.in/api',
      ),
    );

    try {
      final response = await dio.get('/users?page=1&per_page=5');

      final List<AppUser> users = (response.data['data'] as List).map((json) {
        return AppUser.fomJson(json);
      }).toList();

      print(users);
    } catch (error) {
      print('Error getting users from network: $error');
    }
  }
}
