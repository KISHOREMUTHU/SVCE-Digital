import 'package:ease_the_error/academics/academics_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DigitalLearning extends StatefulWidget {
  const DigitalLearning({Key key}) : super(key: key);

  @override
  _DigitalLearningState createState() => _DigitalLearningState();
}

class _DigitalLearningState extends State<DigitalLearning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text('Digital Learning',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ))),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/activites_bg.png')),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(height: 40),
              Container(width: double.infinity, child: DigitalGrid()),
              Container(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
