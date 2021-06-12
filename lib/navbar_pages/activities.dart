import 'package:ease_the_error/activities/activities_widget/activity_grid_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [Colors.grey[100], Colors.white])),
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Text(
                  'Activities',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Colors.black87,
                        letterSpacing: .5,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(width: double.infinity, child: ActivityGrid()),
            ]),
          ),
        ),
      ),
    );
  }
}
