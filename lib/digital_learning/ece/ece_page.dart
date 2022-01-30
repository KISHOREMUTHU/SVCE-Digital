import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ece_scroller.dart';

class ECEPage extends StatefulWidget {
  const ECEPage({Key key}) : super(key: key);

  @override
  _ECEPageState createState() => _ECEPageState();
}

class _ECEPageState extends State<ECEPage> {
  bool closeTopContainer = false;
  final ECEScroller categoriesScroller = ECEScroller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.amber,
        title: Text(
          ' ECE ',
          style: GoogleFonts.montserrat(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/activites_bg.png'),
          ),
        ),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: closeTopContainer ? 0 : 1,
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: double.infinity,
              alignment: Alignment.topCenter,
              child: categoriesScroller),
        ),
      ),
    );
  }
}
