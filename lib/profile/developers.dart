import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeveloperTeam extends StatefulWidget {
  @override
  _DeveloperTeamState createState() => _DeveloperTeamState();
}

class _DeveloperTeamState extends State<DeveloperTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'Developer Team',
          style: GoogleFonts.montserrat(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/dev.png',
            ),
          ),
        ),
      ),
    );
  }
}
