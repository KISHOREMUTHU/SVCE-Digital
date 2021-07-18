import 'package:carousel_pro/carousel_pro.dart';
import 'package:ease_the_error/placement/preparation.dart';
import 'package:ease_the_error/placement/top_companies.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Placements extends StatefulWidget {
  @override
  _PlacementsState createState() => _PlacementsState();
}

class _PlacementsState extends State<Placements> {
  Widget placement_carousel = new Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 2),
            )
          ],
        ),
        padding: EdgeInsets.all(10),
        height: 220.0,
        child: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage("assets/pl1.jpeg"),
            AssetImage("assets/pl2.jpeg"),
            AssetImage("assets/pl3.jpeg"),
            AssetImage("assets/pl4.jpeg"),
            AssetImage("assets/pl5.jpeg"),
          ],
          autoplay: true,
          dotSize: 4.0,
          indicatorBgPadding: 2.0,
          dotBgColor: Colors.transparent,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 2000),
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.amber,
            iconTheme: IconThemeData(color: Colors.white),
            title: Text('Placement Cell',
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
                SizedBox(height: 20),
                placement_carousel,
                SizedBox(height: 30),
                FlipCard(
                  front: Container(
                    height: MediaQuery.of(context).size.height * 0.44,
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
                        'About',
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
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "The Placement cell is one of the important department in SVCE. Knowing that you will be guided after your graduation so that you land a job helps you feel secure. This is the reason why we have a dedicated placement cell that helps, guides, and advises students about the future.",
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "The Training and Placement Cell headed by a Senior Professor in the college plays a very active role in getting our students placed in various leading Multi National companies (MNCs) and Indian Companies.",
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Top Co - Ordinators',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.blue.shade900,
                      fontSize: 27,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Prof. S. Muraleedharan MS, MBA',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Chief Placement Officer",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Mr. E. Ramachandiran  M.Tech.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Assistant Placement Officer",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Mr. K.S. Prabakar  M.E.,Ph.D.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Assistant Placement Officer",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Mr. D. Pugazharasu  M.A., MCA.,',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Junior Assistant",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Department Co - Ordinators',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.blue.shade900,
                      fontSize: 27,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.height * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Mr. J. Sivaramapandian  M.E.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Mechanical Engineering",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Mr. M. Sureshkumar  M.E.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Mr. T. Rajasekaran  M.E.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Computer Science and Engineering",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Mr. P.Arul  M.E.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Mr. G. Loganathan  M.E.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Mr. P. Muthukumaran  M.E.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Electronics and Communication Engineering",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Dr. R. Kannadasan  Ph.D.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Mr. S. Thamizmani  M.E.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Electrical and Electronics Engineering",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Mr. M. Yogesh Kumar  M.Tech.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Mr. S. Bharath M.Tech.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Chemical Engineering",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Mr. A.R. Guru Gokul M.E.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Mr. K. Suresh  M.E.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Information Technology",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Mr. R. Sakthivel  M.E.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Mr. A.K. Boobalasenthilraj  M.E.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Automobile Engineering",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Mr. S. Naga Vignesh  M.S.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Bio Technology",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Mr. S. Diraviabalan  M.E.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Civil Engineering",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Prof. S. Krishnan',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Marine Engineering",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Top()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
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
                            'Major Recruiters',
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
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Preparation()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
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
                            'Preparation',
                            overflow: TextOverflow.fade,
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
                SizedBox(height: 25),
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
                                              "https://www.svce.ac.in/placement/",
                                          javascriptMode:
                                              JavascriptMode.unrestricted,
                                        ),
                                      ),
                                    )));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
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
                            'More Info',
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
                SizedBox(height: 45),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
