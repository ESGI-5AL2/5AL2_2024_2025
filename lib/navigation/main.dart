import 'package:al2_2024/navigation/destinations/screen_b.dart';
import 'package:al2_2024/navigation/destinations/screen_c.dart';
import 'package:al2_2024/navigation/navigation_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const NavigationHomeScreen(),
        '/screenB': (context) => const ScreenB(),
      },
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/screenC') {}

        switch (settings.name) {
          case '/screenC':
            final arguments = settings.arguments;
            if (arguments is String) {
              return MaterialPageRoute(
                builder: (context) => ScreenC(id: arguments),
              );
            }
          default:
            return MaterialPageRoute(
              builder: (context) => Container(color: Colors.pink),
            );
        }

        return MaterialPageRoute(
          builder: (context) => Container(color: Colors.pink),
        );
      },
    );
  }
}
