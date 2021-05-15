import 'package:flutter/material.dart';

class DeveloperTeam extends StatefulWidget {
  @override
  _DeveloperTeamState createState() => _DeveloperTeamState();
}

class _DeveloperTeamState extends State<DeveloperTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Developer Team',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/dev.png'),
          ),
        ),
      ),
    );
  }
}
