import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeveloperTeam extends StatefulWidget {
  @override
  _DeveloperTeamState createState() => _DeveloperTeamState();
}

class _DeveloperTeamState extends State<DeveloperTeam> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/dev.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
