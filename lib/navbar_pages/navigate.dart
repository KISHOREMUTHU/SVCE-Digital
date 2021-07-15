import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

const maps = [
  {
    "sl. no": 1,
    "location": "SVCE Bus Parking Area",
    "image ": "assets\/route\/busparking.png",
    "link": "https:\/\/maps.app.goo.gl\/tNMesH9bRJvk3Hs6A"
  },
  {
    "sl. no": 2,
    "location": "SVCE Car Parking Area",
    "image ": "assets\/route\/carparking.png",
    "link": "https:\/\/maps.app.goo.gl\/BoE7KLD78kE6DzF2A"
  },
  {
    "sl. no": 3,
    "location": "SVCE Cricket Ground",
    "image ": "assets\/route\/cricketground.png",
    "link": "https:\/\/maps.app.goo.gl\/1pm9BWFQxBKNDmjN9"
  },
  {
    "sl. no": 4,
    "location": "SVCE Grounds",
    "image ": "assets\/route\/ground.png",
    "link": "https:\/\/maps.app.goo.gl\/9FH42ija5A7ydssL7"
  },
  {
    "sl. no": 5,
    "location": "SVCE Men\'s Hostel Block I",
    "image ": "assets\/route\/hostel.png",
    "link": "https:\/\/maps.app.goo.gl\/13T34tcj8p6RpHM16"
  },
  {
    "sl. no": 6,
    "location": "SVCE Men\'s Hostel Block II",
    "image ": "assets\/route\/hostel.png",
    "link": "https:\/\/maps.app.goo.gl\/VAgeHVhzNRdMaakR9"
  },
  {
    "sl. no": 7,
    "location": "SVCE Men\'s Hostel Block III",
    "image ": "assets\/route\/hostel.png",
    "link": "https:\/\/maps.app.goo.gl\/YBjTM5XmHLDmWNCy6"
  },
  {
    "sl. no": 8,
    "location": "SVCE Men\'s Hostel Block IV",
    "image ": "assets\/route\/hostel.png",
    "link": "https:\/\/maps.app.goo.gl\/6jHHN8sqhp48pppZ8"
  },
  {
    "sl. no": 9,
    "location": "SVCE Men\'s Hostel Block V",
    "image ": "assets\/route\/hostel.png",
    "link": "https:\/\/maps.app.goo.gl\/Z4RdKob6wdfTyZ927"
  },
  {
    "sl. no": 10,
    "location": "SVCE Men\'s Hostel Block VI",
    "image ": "assets\/route\/hostel.png",
    "link": "https:\/\/maps.app.goo.gl\/Xur3out1Ym6rRGqi8"
  },
  {
    "sl. no": 11,
    "location": "SVCE Men\'s Hostel Block VII",
    "image ": "assets\/route\/hostel.png",
    "link": "https:\/\/maps.app.goo.gl\/nG9xFpHSVhxHAitFA"
  },
  {
    "sl. no": 12,
    "location": "SVCE Women\'s Hostel",
    "image ": "assets\/route\/hostel.png",
    "link": "https:\/\/maps.app.goo.gl\/DJR5xFKyRRyX5dMp8"
  },
  {
    "sl. no": 13,
    "location": "Cafe Coffee Day",
    "image ": "assets\/route\/ccd.png",
    "link": "https:\/\/maps.app.goo.gl\/vKxXU5n9XagqfcrW9"
  },
  {
    "sl. no": 14,
    "location": "SVCE Central Library",
    "image ": "assets\/route\/library.png",
    "link": "https:\/\/maps.app.goo.gl\/rYCvQzzSBmxwZLP69"
  },
  {
    "sl. no": 15,
    "location": "Sri Vijaya Ganapathy Temple",
    "image ": "assets\/route\/temple.png",
    "link": "https:\/\/maps.app.goo.gl\/SsqcV6vQ23xhR7Wj9"
  },
  {
    "sl. no": 16,
    "location": "SVCE Swimming Pool",
    "image ": "assets\/route\/swimmingpool.png",
    "link": "https:\/\/maps.app.goo.gl\/scbXwG2HMZX1rVyN8"
  },
  {
    "sl. no": 17,
    "location": "SVCE Block 1",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/dC3s6nT3DYfpS8nD7"
  },
  {
    "sl. no": 18,
    "location": "SVCE Block 2",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/UmgMb2nkyCy3qvXD9"
  },
  {
    "sl. no": 19,
    "location": "SVCE Block 3",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/vbd3BWUtSokJAHmw8"
  },
  {
    "sl. no": 20,
    "location": "SVCE Block 4",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/nHn1R2ekDp3WZipV8"
  },
  {
    "sl. no": 21,
    "location": "SVCE Block 5",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/CpSZevJNa2T2yjPr7"
  },
  {
    "sl. no": 22,
    "location": "Automobile Dept. Block",
    "image ": "assets\/route\/auto.png",
    "link": "https:\/\/maps.app.goo.gl\/bct328X6xspP9qQdA"
  },
  {
    "sl. no": 23,
    "location": "BioTechnology Dept. Block",
    "image ": "assets\/route\/biotech.png",
    "link": "https:\/\/maps.app.goo.gl\/mzawkxaXEqCxZYSv9"
  },
  {
    "sl. no": 24,
    "location": "Chemical Dept. Block",
    "image ": "assets\/route\/chem.png",
    "link": "https:\/\/maps.app.goo.gl\/czQj5bZVY9hLnE5m8"
  },
  {
    "sl. no": 25,
    "location": "ECE and Civil Dept. Block",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/Gir14Mq3ny8f2gkUA"
  },
  {
    "sl. no": 26,
    "location": "CSE Dept. Block",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/rvaL4sPW3sepYshr5"
  },
  {
    "sl. no": 27,
    "location": "IT Dept. Block",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/nHn1R2ekDp3WZipV8"
  },
  {
    "sl. no": 28,
    "location": "EEE Dept. Block",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/Mujzand7dXgYHBFF8"
  },
  {
    "sl. no": 29,
    "location": "Mechanical Dept. Block",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/41T9XKpzAhh9zoff8"
  },
  {
    "sl. no": 30,
    "location": "Marine Dept. Block",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/13z56MqXeBoQvpJt9"
  },
  {
    "sl. no": 31,
    "location": "Applied Maths and IMS Block",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/ZkLf3rsdCgFdj3nz8"
  },
  {
    "sl. no": 32,
    "location": "Applied Physics and Chemistry Block",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/e3nKjEduh62xtSw98"
  },
  {
    "sl. no": 33,
    "location": "Open Air Theatre (OAT)",
    "image ": "assets\/route\/oat.jpg",
    "link": "https:\/\/maps.app.goo.gl\/n9LDFJCb6tM97Yhw8"
  },
  {
    "sl. no": 34,
    "location": "FORESE Block",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/5VyKGyENv6d3H8hd6"
  },
  {
    "sl. no": 35,
    "location": "Technology For Innovation Centre",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/e3nKjEduh62xtSw98"
  },
  {
    "sl. no": 36,
    "location": "Traxion Racing Arena",
    "image ": "assets\/route\/block.png",
    "link": "https:\/\/maps.app.goo.gl\/xxqjHLYrM3sJxeCL6"
  },
  {
    "sl. no": 37,
    "location": "Substation",
    "image ": "assets\/route\/substation.png",
    "link": "https:\/\/maps.app.goo.gl\/jRwHsHEHStbPoRDd6"
  },
  {
    "sl. no": 38,
    "location": "SVCE Pond",
    "image ": "assets\/route\/pond.png",
    "link": "https:\/\/maps.app.goo.gl\/UonJpEKjRuYJkfRP6"
  },
  {
    "sl. no": 39,
    "location": "Block V - Food Court",
    "image ": "assets\/route\/chillout.png",
    "link": "https:\/\/maps.app.goo.gl\/sL8fr2aQcCQVR8nj8"
  },
  {
    "sl. no": 40,
    "location": "ChillOut",
    "image ": "assets\/route\/chillout.png",
    "link": "https:\/\/maps.app.goo.gl\/nd5K3kGXwzxMciQS9"
  },
  {
    "sl. no": 41,
    "location": "Silver Jubliee Auditorium Complex (Multi Purpose Hall)",
    "image ": "assets\/route\/mph.png",
    "link": "https:\/\/maps.app.goo.gl\/ssXSow9n6Kh72VDS6"
  },
];

class Navigate extends StatefulWidget {
  @override
  _NavigateState createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(),
    );
  }
}

class NavigationRoutes extends StatefulWidget {
  @override
  _NavigationRoutesState createState() => _NavigationRoutesState();
}

class _NavigationRoutesState extends State<NavigationRoutes> {
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;
  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = maps;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(MaterialButton(
        onPressed: () {
          String s = post['link'];
          _launchURL(s);
        },
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withAlpha(100), blurRadius: 10.0),
                ]),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 160,
                          child: Text(
                            post["location"],
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(post['image ']),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ));
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {
      double value = controller.offset / 119;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.blue.shade900,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Where To Go',
            style: GoogleFonts.montserrat(
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                showSearch(context: context, delegate: MapSearch());
              },
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/activites_bg.png'),
            ),
          ),
          height: size.height,
          child: Column(
            children: <Widget>[
              Expanded(
                  child: ListView.builder(
                      controller: controller,
                      itemCount: itemsData.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        double scale = 1.0;
                        if (topContainer > 0.5) {
                          scale = index + 0.5 - topContainer;
                          if (scale < 0) {
                            scale = 0;
                          } else if (scale > 1) {
                            scale = 1;
                          }
                        }
                        return Opacity(
                          opacity: scale,
                          child: Transform(
                            transform: Matrix4.identity()..scale(scale, scale),
                            alignment: Alignment.bottomCenter,
                            child: Align(
                                heightFactor: 0.7,
                                alignment: Alignment.topCenter,
                                child: itemsData[index]),
                          ),
                        );
                      })),
            ],
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

class NavigatorData {
  final String name;
  final String image;
  final String url;

  NavigatorData({this.name, this.image, this.url});
}

List<dynamic> loadNavigators() {
  List<dynamic> response = maps;
  List<NavigatorData> hospitals = [];
  response.forEach((e) {
    hospitals.add(
        NavigatorData(name: e['location'], url: e['link'], image: e['image ']));
  });
  return hospitals;
}

class MapSearch extends SearchDelegate<NavigatorData> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text(query));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final myList = query.isEmpty
        ? loadNavigators()
        : loadNavigators()
            .where((p) =>
                p.name.toLowerCase().contains(query) ||
                p.name.startsWith(query) ||
                p.name.toLowerCase().startsWith(query))
            .toList();

    return myList.isEmpty
        ? Center(
            child: Text(
            'No Results Found...',
            style: TextStyle(fontSize: 20, color: Colors.red),
          ))
        : ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              final NavigatorData listItem = myList[index];
              return MaterialButton(
                onPressed: () {
                  _launchURL(listItem.url);
                },
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withAlpha(100),
                              blurRadius: 10.0),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: 160,
                                  child: Text(
                                    listItem.name,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(listItem.image),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              );
            },
            itemCount: myList.length,
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
