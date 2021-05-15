import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  Widget library_carousel = new Container(
    height: 180.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage("assets/lib1.jpeg"),
        AssetImage("assets/lib2.jpeg"),
        AssetImage("assets/lib3.jpeg"),
        AssetImage("assets/lib4.jpeg"),
        //  AssetImage("assets/emp5.jpeg"),
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                child: Text(
                  'Library',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Let's have a look into our library !!!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Container(
                  width: 360,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Nothing is pleasanter than exploring a library.',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        " - Walter Savage Landor (1775-1864)",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Container(
                  width: 360,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Libraries store the energy that fuels the imagination. They open up windows to the world and inspire us to explore and achieve, and contribute to improving our quality of life.',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        " - Sidney Sheldon (1917-2007)",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: library_carousel,
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'About',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.blue,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Dr. A.C. Muthiah Central Library is a preeminent library, containing an expansive digital and physical collection that offers a diverse range of services and resources that includes books and journals covering all major fields of Science and Engineering. The fully air-conditioned, Wi-Fi enabled three-storied building which is of 4,900.75 sq.mt. (52,732.07 sq.ft.) is a vital resource of learning, engagement and creativity not only in engineering but also beyond the domains of engineering. The Library has total number of 1,01,102 books (25,630 titles), 1,348 journals (Online and Print), 9,636 back volumes of journals and 2,200 CDs. Besides the Central Library, each department has a library that has a repository of materials related to the fields of specialization of the Department.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Digital Library',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "SVCE strongly believes in promoting and facilitating eLearning. Towards this end, we have developed a Digital Library section, totally sponsored by the SVCE Alumni Association.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                child: Text(
                  "1. National Programme on Technology Enhanced Learning (NPTEL) which provides online courses and video lectures which use several methods like chalk-and-talk, tablet writing, power point, two and three dimensional animations, interactive codes, etc. Each course comprises approximately 40 video lectures of about 1 hour duration",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                child: Text(
                  "2. SVCE Video Lectures developed by members of faculty of the College.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                child: Text(
                  "3. CDs, DVDs, and software",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Instant Services',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "The Barcode Technology, a digital-transaction method for charging and discharging of books facilitates easier and faster transaction. All the resources have been classified according to Dewey Decimal Classification Scheme (22nd edition) and provides Open Access system.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              //  SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Multi-Disciplinary Databases',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Besides a rich multi-subject collected works, the subscription to most of the major technical journals including, The Institute of Electrical and Electronics Engineers (IEEE), ScienceDirect, Springer, American Society of Civil Engineers (ASCE), Nature, Scientific American and Association for Computing Machinery (ACM) journals, aids to have an enriched collection that promotes research. Learners and members of faculty also take advantage of the McGraw Hill Access Engineering Library (General Engineering and Reference Books) eBooks’ subscription. In addition, the library archives encyclopaedias, journals and magazines – current and historical, statistics and newspapers.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              //  SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'The Study-Zone',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "The preferences for studying vary from one to one. In order to accommodate an ideal learning environment, the library offers completely well-appointed, silent study areas. Besides that, there are several halls, private sections, study-tables, computer-assisted facility that cater to students’ needs and preferences. ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              // SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'International and Intra national Membership',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "The library has Institutional Membership with the British Council Library, Madras Library Network (MALIBNET), The Institution of Engineers (India), Kolkata and Professional Membership with Association for Computing Machinery (ACM), New York.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              // SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'The Book Bank',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "The library nurtures a book bank that has a huge collection of about 1782 books on engineering and sciences exclusively for deserving candidates.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              // SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Supervision',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "The Library Committee is headed by the Principal. The committee also comprises of the Controller of Examinations, the Deans and the Heads of Departments, and Student Representatives. ‘The Gathering’ takes place every semester to discuss the functioning of the library.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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
                      width: 340,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(70)),
                      child: Center(
                        child: Text(
                          'Online Book Renewal',
                          style: TextStyle(
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
                    height: 100,
                    width: 300,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Make sure you are connected to our College Network , before accessing the Library Portal. ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        )
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
