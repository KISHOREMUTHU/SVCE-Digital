import 'package:carousel_pro/carousel_pro.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  Widget library_carousel = new Padding(
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
        height: 180.0,
        child: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage("assets/lib1.jpeg"),
            AssetImage("assets/lib2.jpeg"),
            AssetImage("assets/lib3.jpeg"),
            AssetImage("assets/lib4.jpeg"),
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
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.amber,
        title: Text(
          'Library',
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
                          color: Colors.black.withAlpha(100), blurRadius: 10.0),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Nothing is pleasanter than exploring a library.',
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        " - Walter Savage Landor (1775-1864)",
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
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withAlpha(100), blurRadius: 10.0),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Libraries store the energy that fuels the imagination. They open up windows to the world and inspire us to explore and achieve, and contribute to improving our quality of life.',
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        " - Sidney Sheldon (1917-2007)",
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
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: library_carousel,
              ),
              FlipCard(
                direction: FlipDirection.VERTICAL,
                front: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withAlpha(100), blurRadius: 10.0),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/ambercard.png'),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'About',
                      style: GoogleFonts.montserrat(fontSize: 30),
                    ),
                  ),
                ),
                back: Padding(
                  padding: EdgeInsets.all(20),
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
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Dr. A.C. Muthiah Central Library is a preeminent library, containing an expansive digital and physical collection that offers a diverse range of services and resources that includes books and journals covering all major fields of Science and Engineering. The fully air-conditioned, Wi-Fi enabled three-storied building which is of 4,900.75 sq.mt. (52,732.07 sq.ft.) is a vital resource of learning, engagement and creativity not only in engineering but also beyond the domains of engineering. The Library has total number of 1,01,102 books (25,630 titles), 1,348 journals (Online and Print), 9,636 back volumes of journals and 2,200 CDs. Besides the Central Library, each department has a library that has a repository of materials related to the fields of specialization of the Department.",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
              FlipCard(
                front: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withAlpha(100), blurRadius: 10.0),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/ambercard.png'),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Digital Library',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(fontSize: 30),
                    ),
                  ),
                ),
                back: Padding(
                  padding: const EdgeInsets.all(20.0),
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
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "SVCE strongly believes in promoting and facilitating eLearning. Towards this end, we have developed a Digital Library section, totally sponsored by the SVCE Alumni Association.",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "1. National Programme on Technology Enhanced Learning (NPTEL) which provides online courses and video lectures which use several methods like chalk-and-talk, tablet writing, power point, two and three dimensional animations, interactive codes, etc. Each course comprises approximately 40 video lectures of about 1 hour duration",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "2. SVCE Video Lectures developed by members of faculty of the College.",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "3. CDs, DVDs, and software                                                                                                                                           ",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
              ),
              FlipCard(
                direction: FlipDirection.VERTICAL,
                front: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withAlpha(100), blurRadius: 10.0),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/ambercard.png'),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Instant Services',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(fontSize: 30),
                    ),
                  ),
                ),
                back: Padding(
                  padding: const EdgeInsets.all(20.0),
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
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "The Barcode Technology, a digital-transaction method for charging and discharging of books facilitates easier and faster transaction. All the resources have been classified according to Dewey Decimal Classification Scheme (22nd edition) and provides Open Access system.",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
              ),
              FlipCard(
                front: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withAlpha(100), blurRadius: 10.0),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/ambercard.png'),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Multi - Disciplinary Databases',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(fontSize: 30),
                    ),
                  ),
                ),
                back: Padding(
                  padding: const EdgeInsets.all(20.0),
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
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Besides a rich multi-subject collected works, the subscription to most of the major technical journals including, The Institute of Electrical and Electronics Engineers (IEEE), ScienceDirect, Springer, American Society of Civil Engineers (ASCE), Nature, Scientific American and Association for Computing Machinery (ACM) journals, aids to have an enriched collection that promotes research. Learners and members of faculty also take advantage of the McGraw Hill Access Engineering Library (General Engineering and Reference Books) eBooks’ subscription. In addition, the library archives encyclopaedias, journals and magazines – current and historical, statistics and newspapers.",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
              ),
              FlipCard(
                front: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withAlpha(100), blurRadius: 10.0),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/ambercard.png'),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Others',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(fontSize: 30),
                    ),
                  ),
                ),
                back: Padding(
                  padding: const EdgeInsets.all(20.0),
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
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "The preferences for studying vary from one to one. In order to accommodate an ideal learning environment, the library offers completely well-appointed, silent study areas. Besides that, there are several halls, private sections, study-tables, computer-assisted facility that cater to students’ needs and preferences. ",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "The library has Institutional Membership with the British Council Library, Madras Library Network (MALIBNET), The Institution of Engineers (India), Kolkata and Professional Membership with Association for Computing Machinery (ACM), New York.",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "The library nurtures a book bank that has a huge collection of about 1782 books on engineering and sciences exclusively for deserving candidates.",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "The Library Committee is headed by the Principal. The committee also comprises of the Controller of Examinations, the Deans and the Heads of Departments, and Student Representatives. ‘The Gathering’ takes place every semester to discuss the functioning of the library.",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SizedBox.fromSize(
                                    size: Size(100, 1000),
                                    child: WebView(
                                      initialUrl:
                                          "https://www.svce.ac.in/facilities/library/services/",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
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
                          'Online Book Renewal',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            Text(
                              'Make sure you are connected to our College Network , before accessing the Library Portal. ',
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amberAccent[200],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}
