import 'package:carousel_pro/carousel_pro.dart';
import 'package:ease_the_error/chatbot/start.dart';
import 'package:ease_the_error/doubt_app/board.dart';
import 'package:ease_the_error/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget image_carousel = new Padding(
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
            AssetImage("assets/img1.jpeg"),
            AssetImage("assets/img2.jpeg"),
            AssetImage("assets/img3.jpeg"),
            AssetImage("assets/img4.jpeg"),
            AssetImage("assets/img5.jpeg"),
            AssetImage("assets/img6.jpeg"),
            AssetImage("assets/img7.jpeg"),
            AssetImage("assets/img8.jpeg"),
          ],
          autoplay: true,
          dotSize: 4.0,
          indicatorBgPadding: 2.0,
          dotBgColor: Colors.transparent,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 2000),
        ),
      ));
  Widget job_carousel = new Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        height: 180.0,
        child: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage("assets/emp.jpeg"),
            AssetImage("assets/emp2.jpeg"),
            AssetImage("assets/emp3.jpeg"),
            AssetImage("assets/emp1.jpeg"),
            AssetImage("assets/emp5.jpeg"),
          ],
          autoplay: true,
          dotSize: 4.0,
          indicatorBgPadding: 2.0,
          dotBgColor: Colors.transparent,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 2000),
        ),
      ));
  Widget alumni_carousel = new Container(
    height: 500.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage("assets/al1.jpeg"),
        AssetImage("assets/al2.jpeg"),
        AssetImage("assets/al3.jpeg"),
        AssetImage("assets/al4.jpeg"),
        AssetImage("assets/al5.jpeg"),
        AssetImage("assets/al6.jpeg"),
      ],
      autoplay: true,
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 2000),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'SVCE Mobile',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        drawer: new Drawer(
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 300,
                      height: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/svce.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 20),
                      child: Text(
                        "Welcome !!!",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                              user.displayName,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.64,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        _launchURL("https://www.svce.ac.in/");
                      },
                      child: ListTile(
                        title: Text(
                          'Events',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                          ),
                        ),
                        leading: Icon(
                          Icons.control_point,
                          color: Colors.white,
                        ),
                        trailing: Icon(Icons.arrow_right,
                            color: Colors.white, size: 32),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _launchURL("https://svce.mastersofterp.in/");
                      },
                      child: ListTile(
                        title: Text(
                          'Student ERP',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                          ),
                        ),
                        leading: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        trailing: Icon(Icons.arrow_right,
                            color: Colors.white, size: 32),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: ListTile(
                        title: Text(
                          'Ask Veronica',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                          ),
                        ),
                        leading: Icon(
                          Icons.help,
                          color: Colors.white,
                        ),
                        trailing: Icon(Icons.arrow_right,
                            color: Colors.white, size: 32),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BoardApp()));
                      },
                      child: ListTile(
                        title: Text(
                          'Sticky Notes',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                          ),
                        ),
                        leading: Icon(
                          Icons.notes,
                          color: Colors.white,
                        ),
                        trailing: Icon(Icons.arrow_right,
                            color: Colors.white, size: 32),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        final provider = Provider.of<GoogleSignInProvider>(
                            context,
                            listen: false);
                        provider.logout();
                      },
                      child: ListTile(
                        title: Text(
                          'Logout',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_right,
                            color: Colors.white, size: 32),
                        leading: Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    ),
                    SizedBox(height: 25),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Follow Us On',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            _launchURL(
                                'https://www.linkedin.com/school/sri-venkateswara-college-of-engineering');
                          },
                          icon: Icon(FontAwesomeIcons.linkedin,
                              color: Colors.white, size: 32),
                        ),
                        SizedBox(width: 20),
                        IconButton(
                          onPressed: () {
                            _launchURL(
                                'https://www.instagram.com/svceofficial/');
                          },
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        SizedBox(width: 20),
                        IconButton(
                          onPressed: () {
                            _launchURL('https://youtu.be/oCFQdzcog88');
                          },
                          icon: Icon(FontAwesomeIcons.youtube,
                              color: Colors.white, size: 32),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/home_bg.png'),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                image_carousel,
                SizedBox(height: 10),
                SizedBox(height: 10),
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
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        'About Us',
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
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'SVCE is a unit of Sri Venkateswara Educational and Health Trust (SVEHT). The Trust was founded on 1 August 1985 at the behest and benign blessings of His Holiness Pujashree Kanchi Kamakoti Peedathipathi Sri Jayendra Saraswathi Swamigal. Dr. A. C. Muthiah, a renowned engineer, industrialist and philanthropist, is the Chairman of the Governing Council of the college. The college is in a 95 acre lush green Campus. It is housed in architecturally exquisite buildings with ample infrastructure such as classrooms, laboratories, libraries, sports arena, canteen, hostels, dispensary, bank etc.,',
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FlipCard(
                  front: Container(
                    height: MediaQuery.of(context).size.height * 0.28,
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
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        'Mission',
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
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "To develop SVCE as a 'CENTRE OF EXCELLENCE' offering Engineering Education to men and women at undergraduate and postgraduate degree levels, bringing out their total personality, emphasising ethical values and preparing them to meet the growing challenges of the industry and diverse societal needs of our nation.",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FlipCard(
                  front: Container(
                    height: MediaQuery.of(context).size.height * 0.28,
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
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        'Quality Policy',
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
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "To impart quality education in Science, Engineering and Technology, nurturing right attitudes towards scholarship, research and entrepreneurship, enabling students to meet the challenges of industry, including Standards of Training, Certification and Watch keeping (STCW) requirements, society and environment.",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16,
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/achieve.jpeg'),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(height: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Top Recruiters',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    job_carousel,
                  ],
                ),
                SizedBox(height: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Activities',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Image.asset('assets/act.jpeg')),
                  ],
                ),
                SizedBox(height: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Our Prominent Alumni',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    alumni_carousel,
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _launchURL(String place) async {
    var url = place;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
