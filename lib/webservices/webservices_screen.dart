import 'package:al2_2024/futures/app_exception.dart';
import 'package:al2_2024/webservices/app_user.dart';
import 'package:al2_2024/webservices/app_user_list_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class WebservicesScreen extends StatefulWidget {
  const WebservicesScreen({super.key});

  @override
  State<WebservicesScreen> createState() => _WebservicesScreenState();
}

class _WebservicesScreenState extends State<WebservicesScreen> {
  bool _loading = true;
  final List<AppUser> _users = [];
  AppException? exception;

  @override
  void initState() {
    super.initState();
    _getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    if (_loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (exception != null) {
      return Center(
        child: Text('Oups, une erreur est survenue : $exception'),
      );
    }

    return ListView.separated(
      itemCount: _users.length,
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemBuilder: (context, index) {
        final user = _users[index];
        return AppUserListItem(user: user);
      },
    );
  }

  void _getUsers() async {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://reqres.in/api',
      ),
    );

    try {
      await Future.delayed(const Duration(seconds: 1));
      final response = await dio.get('/users?page=1&per_page=5');

      final List<AppUser> users = (response.data['data'] as List).map((json) {
        return AppUser.fomJson(json);
      }).toList();

      setState(() {
        _users.addAll(users);
        _loading = false;
      });
    } catch (error) {
      print('Error getting users from network: $error');
      setState(() {
        exception = AppException.from(error);
        _loading = false;
      });
    }
  }
}
