import 'package:flutter/material.dart';
import 'package:jobify/applied_screen.dart';
import 'package:jobify/custom_theme.dart';
import 'package:jobify/home_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    const HomeScreen(),
    Container(color: Colors.yellow),
    const AppliedScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.purple),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: black,
        unselectedItemColor: grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/home.png')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/saved.png')),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/applied.png')),
            label: 'Applied',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/messages.png')),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/profile.png')),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
