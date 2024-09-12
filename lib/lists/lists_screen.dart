import 'package:al2_2024/lists/user.dart';
import 'package:al2_2024/lists/user_list_item.dart';
import 'package:flutter/material.dart';

class ListsScreen extends StatelessWidget {
  const ListsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final users = List.generate(100, (index) {
      return User(
        firstName: 'FirstName $index',
        lastName: 'LastName $index',
        address: 'Address $index',
      );
    });

    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemCount: users.length,
          separatorBuilder: (context, index) {
            if (index % 3 == 0 && index != 0) {
              return Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              );
            }

            return const SizedBox(height: 10);
          },
          itemBuilder: (context, index) {
            final user = users[index];
            return UserListItem(user: user);
          },
        ),
      ),
    );
  }
}
