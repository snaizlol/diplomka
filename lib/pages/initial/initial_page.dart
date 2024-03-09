import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  void _goToLocation(int index) {
    widget.navigationShell.goBranch(index,
        initialLocation: index == widget.navigationShell.currentIndex);
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Scoreboard',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Articles',
            icon: Icon(Icons.article),
          ),
        ],
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );

          _goToLocation(_currentIndex);
        },
      ),
    );
  }
}
