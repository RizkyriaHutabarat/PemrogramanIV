import 'package:flutter/material.dart';
import 'package:praktikum06/input_validation.dart';
import 'package:praktikum06/main.dart';

class DynamicButtonNavbar extends StatefulWidget {
  const DynamicButtonNavbar({super.key});

  @override
  State<DynamicButtonNavbar> createState() => _DynamicButtonNavbarState();
}

class _DynamicButtonNavbarState extends State<DynamicButtonNavbar> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    const MyInput(),
    const MyInputValidation(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentPageIndex,
          onTap: onTabTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.input),
              label: 'Latihan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.task_alt_outlined),
              label: 'Input Validation',
            ),
          ],
          backgroundColor: Colors.black,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white,
        ));
  }
}
