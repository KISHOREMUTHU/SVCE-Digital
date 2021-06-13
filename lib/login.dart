import 'package:ease_the_error/navbar_pages/activities.dart';
import 'package:ease_the_error/navbar_pages/erp.dart';
import 'package:ease_the_error/navbar_pages/home.dart';
import 'package:ease_the_error/navbar_pages/profile.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  int _currentIndex = 0;
  final tabs = [
    Home(),
    Activities(),
    Erp(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber,
          fixedColor: Colors.blue[900],
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 20,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storage),
              label: 'Our Activities',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.important_devices),
              label: 'Student ERP',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}
