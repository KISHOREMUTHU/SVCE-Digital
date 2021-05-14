import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

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
                      Text(
                        'Nothing is pleasanter than exploring a library.',
                        style: TextStyle(
                          fontSize: 18,
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
                  height: 150,
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
                      Text(
                        'Libraries store the energy that fuels the imagination. They open up windows to the world and inspire us to explore and achieve, and contribute to improving our quality of life.',
                        style: TextStyle(
                          fontSize: 18,
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
            ],
          ),
        ),
      ),
    );
  }
}
