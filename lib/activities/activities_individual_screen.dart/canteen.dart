import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Canteen extends StatefulWidget {
  @override
  _CanteenState createState() => _CanteenState();
}

class _CanteenState extends State<Canteen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.amber,
          title: Text(
            'Canteen',
            style: GoogleFonts.montserrat(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/activites_bg.png'),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
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
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'To a man with an empty stomach food is God',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            " – Mahatma Gandhi",
                            style: GoogleFonts.montserrat(
                              fontSize: 17,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "It has been a wonderful journey for the college canteen. From a ten by ten room with tinned roof to a two storey building spanning 340 sq mt. From catering to about 50 in its birth year (1985 ) to an almost 1000 (2015), and still counting …",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  FlipCard(
                    front: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withAlpha(100),
                              blurRadius: 10.0),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/ambercard.png'),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Time Table',
                          style: GoogleFonts.montserrat(fontSize: 30),
                        ),
                      ),
                    ),
                    back: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 280,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withAlpha(100),
                              blurRadius: 10.0),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/can1.jpeg'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        'Canteen Committee',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 27,
                          color: Colors.blue.shade900,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
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
                            'Dr S.Ganesh Vaidhyanathan',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Principal",
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "President",
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
                      width: MediaQuery.of(context).size.width * 0.9,
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
                            'Dr G.Devasakayam',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Head , ACH",
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Officer In-charge",
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
                      width: MediaQuery.of(context).size.width * 0.9,
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
                            'Mr M.Sethumadhavan',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Manager",
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
                  SizedBox(height: 60),
                  FlipCard(
                    front: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 320,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withAlpha(100),
                                blurRadius: 10.0),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/ambercard.png'),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Members And Staff',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(fontSize: 27),
                          ),
                        ),
                      ),
                    ),
                    back: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 320,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withAlpha(100),
                                blurRadius: 10.0),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/can2.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Our Canteens',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        fontSize: 27,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
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
                        children: [
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Center(
                                  child: Container(
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundImage:
                                          AssetImage('assets/canteen.jpeg'),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30.0, 20, 20, 20),
                                child: Center(
                                    child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
                                  child: Text(
                                    'Main Canteen',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                    ),
                                  ),
                                )),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
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
                        children: [
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Center(
                                  child: Container(
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundImage:
                                          AssetImage('assets/route/ccd.png'),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Center(
                                    child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
                                  child: Text(
                                    'Cafe Coffee Day',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                    ),
                                  ),
                                )),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
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
                        children: [
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Center(
                                  child: Container(
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundImage: AssetImage(
                                          'assets/route/chillout.png'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Center(
                                    child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
                                  child: Text(
                                    'Block V - FoodCourt',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                    ),
                                  ),
                                )),
                              ),
                            ],
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  KnowMore(),
                  SizedBox(height: 25),
                ],
              ),
            )),
      ),
    );
  }
}

class KnowMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.blue.shade900,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
        ],
      ),
      // color: Colors.red,
      padding: EdgeInsets.all(4),
      child: MaterialButton(
        onPressed: () {
          _launchURL('https://www.svce.ac.in/facilities/canteen/');
        },
        child: Text(' Know More ... ',
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
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
