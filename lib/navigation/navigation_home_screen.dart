import 'package:al2_2024/navigation/destinations/screen_a.dart';
import 'package:al2_2024/navigation/destinations/screen_c.dart';
import 'package:flutter/material.dart';

class NavigationHomeScreen extends StatelessWidget {
  const NavigationHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _navigateToScreenA(context),
              child: const Text('Go to screen a'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToScreenB(context),
              child: const Text('Go to screen b'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToScreenC(context),
              child: const Text('Go to screen c'),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToScreenA(BuildContext context) async {
    final result = await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const ScreenA(),
    ));

    print(result);
  }

  void _navigateToScreenB(BuildContext context) async {
    Navigator.of(context).pushNamed('/screenB');
  }

  void _navigateToScreenC(BuildContext context) async {
    ScreenC.navigateTo(context, 'toto');
  }
}
