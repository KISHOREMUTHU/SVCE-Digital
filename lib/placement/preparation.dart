import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Preparation extends StatefulWidget {
  @override
  _PreparationState createState() => _PreparationState();
}

class _PreparationState extends State<Preparation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text('Placement Preparation',
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  'Placement training plays a major role in shaping up the career goals of students. It is the dream of every engineering student to get placed in a top organization visiting their campus for recruitment. Keeping this key aspect into consideration, it is realized that training is important for engineering students to enhance their employability skills and achieve good placement in various Industries.',
                  style: GoogleFonts.montserrat(
                    fontSize: 17,
                    //color: Colors.blue,
                  ),
                ),
              ),
              FlipCard(
                front: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
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
                          color: Colors.black.withAlpha(100), blurRadius: 10.0),
                    ],
                  ),
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Text(
                      'Aim of Placement Preparation',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
                back: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.blue.shade900,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "1. To create awareness about 'career planning' and 'career mapping' among the students.",
                            style: GoogleFonts.montserrat(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "2. To train the students on 'Personality development'.",
                            style: GoogleFonts.montserrat(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "3. To organize Various Training Programmes to train the students in the areas of Quantitative Aptitude, Logical reasoning and Verbal reasoning.",
                            style: GoogleFonts.montserrat(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "4. To train the students through Mock Interviews to perform well in the professional interviews as per the Industries expectations.",
                            style: GoogleFonts.montserrat(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SafeArea(
                                    child: SizedBox.fromSize(
                                      size: Size(100, 1000),
                                      child: WebView(
                                        initialUrl:
                                            "https://drive.google.com/drive/u/0/mobile/folders/1MwdlTWEcKjBtJqr_EkX2ZRdUz--NAjLA?usp=sharing",
                                        javascriptMode:
                                            JavascriptMode.unrestricted,
                                      ),
                                    ),
                                  )));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        borderRadius: BorderRadius.circular(70),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withAlpha(100),
                              blurRadius: 10.0),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Placement Resources',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
