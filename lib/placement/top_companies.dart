import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Top extends StatefulWidget {
  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text('Major Recruiters',
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
              SizedBox(height: 30),
              FlipCard(
                front: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/ambercard.png'),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        'Top Companies',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                ),
                back: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 350,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                        image: AssetImage('assets/topc.jpeg'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Placement Statistics',
                  style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 27,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 250,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withAlpha(100), blurRadius: 10.0),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/graph.jpeg'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withAlpha(100), blurRadius: 10.0),
                    ],
                    image: DecorationImage(
                      image: AssetImage('assets/barg.jpeg'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
