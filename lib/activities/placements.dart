import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Placements extends StatefulWidget {
  @override
  _PlacementsState createState() => _PlacementsState();
}

class _PlacementsState extends State<Placements> {
  Widget placement_carousel = new Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
    ),
    padding: EdgeInsets.all(20),
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
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'SVCE - Placement Cell',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 27,
                  ),
                ),
              ),
              placement_carousel,
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "The Placement cell is one of the important department in SVCE. Knowing that you will be guided after your graduation so that you land a job helps you feel secure. This is the reason why we have a dedicated placement cell that helps, guides, and advises students about the future.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "The Training and Placement Cell headed by a Senior Professor in the college plays a very active role in getting our students placed in various leading Multi National companies (MNCs) and Indian Companies.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Top Co - Ordinators',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 27,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Prof. S. Muraleedharan, MS,MBA',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "(Chief Placement Officer)",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
