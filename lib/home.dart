import 'package:al2_2024/profile_tab.dart';
import 'package:flutter/material.dart';

import 'settings_tab.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final _tabs = const [
    ProfileTab(),
    SettingsTab(),
  ];

  @override
  void initState() {
    super.initState();
    print('Le widget va se build');
  }

  @override
  void dispose() {
    print('Le widget va se détruire');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.add_alert),
        actions: const [
          Icon(Icons.add),
          Icon(Icons.minimize),
        ],
        title: Container(
          height: 30,
          width: 30,
          color: Colors.red,
        ),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_outlined),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _onItemTap(1),
      ),
    );
  }

  void _onItemTap(int newIndex) {
    print('New indew: $newIndex');
    setState(() {
      _currentIndex = newIndex;
    });
  }
}
