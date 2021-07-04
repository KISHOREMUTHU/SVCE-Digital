import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ease_the_error/navbar_pages/activities.dart';
import 'package:ease_the_error/navbar_pages/home.dart';
import 'package:ease_the_error/navbar_pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  int _currentIndex = 0;
  List<IconData> data = [
    Icons.home,
    Icons.storage,
    Icons.location_on_sharp,
    Icons.brunch_dining,
    Icons.person,
  ];
  final tabs = [
    Home(),
    Activities(),
    Container(),
    Container(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.amber[600],
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Home',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: Colors.blue.shade900,
            inactiveColor: Colors.white,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.storage),
            title: Text(
              'Activities',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: Colors.blue.shade900,
            inactiveColor: Colors.white,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.location_on_sharp),
            title: Text(
              'Navigate',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: Colors.blue.shade900,
            inactiveColor: Colors.white,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.brunch_dining),
            title: Text(
              'Foods',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: Colors.blue.shade900,
            inactiveColor: Colors.white,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text(
              'Profile',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: Colors.blue.shade900,
            inactiveColor: Colors.white,
          ),
        ],
        animationDuration: Duration(milliseconds: 300),
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
