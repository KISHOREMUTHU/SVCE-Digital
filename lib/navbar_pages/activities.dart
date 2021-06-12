import 'package:ease_the_error/activities/activities_widget/activity_grid_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [Colors.grey[100], Colors.white])),
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Text(
                  'Activities',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Colors.black87,
                        letterSpacing: .5,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(width: double.infinity, child: ActivityGrid()),
            ]),
            /*
            child: Container(
              // background
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/wap.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Activities',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            color: Colors.grey[700],
                            letterSpacing: .5,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  // 1 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //! academics - done 
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Academics()));
                                },
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage('assets/academics.jpeg'),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(' Academics '),
                            ],
                          ),
                          SizedBox(width: 40),
                          //! placements done 
                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Placements()));
                                },
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage('assets/placement.jpeg'),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(' Placements '),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  // 2 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //! Canteen done 
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Canteen()));
                                },
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage('assets/canteen.jpeg'),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(' Canteen '),
                            ],
                          ),
                          SizedBox(width: 40),
                          Column(
                            children: [
                              //! library done 
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Library()));
                                },
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage('assets/library.jpeg'),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(' Library '),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  // 3 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
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
                                                      "https://www.svce.ac.in/facilities/sports/home/",
                                                  javascriptMode:
                                                      JavascriptMode.unrestricted,
                                                ),
                                              )));
                                },
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage('assets/sports.jpeg'),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(' Sports '),
                            ],
                          ),
                          SizedBox(width: 40),
                          //! dispensary 
                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dispensary()));
                                },
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage('assets/dispensary.jpeg'),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(' Dispensary '),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  // 4 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //! Hostel done
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SizedBox.fromSize(
                                                size: Size(100, 1000),
                                                child: WebView(
                                                  initialUrl:
                                                      "https://www.svce.ac.in/facilities/hostel/",
                                                  javascriptMode:
                                                      JavascriptMode.unrestricted,
                                                ),
                                              )));
                                },
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage('assets/hostel.jpg'),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(' Hostel '),
                            ],
                          ),
                          SizedBox(width: 40),
                          Column(
                            children: [
                              //! transport done
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Transport()));
                                },
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage('assets/bus.jpeg'),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(' Transport '),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  // 5 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // 9 - research - web link 
                          Column(
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
                                                      "https://www.svce.ac.in/research/office-of-the-dean-research/",
                                                  javascriptMode:
                                                      JavascriptMode.unrestricted,
                                                ),
                                              )));
                                },
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage('assets/research.jpg'),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Research'),
                            ],
                          ),
                          SizedBox(width: 40),
                          // 10 - student council 
                          Column(
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
                                                      "https://www.svce.ac.in/research/office-of-the-dean-research/",
                                                  javascriptMode:
                                                      JavascriptMode.unrestricted,
                                                ),
                                              )));
                                },
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage('assets/sa.jpeg'),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Students Council'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          */
          ),
        ),
      ),
    );
  }
}
