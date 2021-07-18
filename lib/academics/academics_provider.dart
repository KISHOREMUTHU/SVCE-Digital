import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AcademicItem {
  final String text;
  final String assetImage;
  final dynamic materialRoute;
  AcademicItem(
      {@required this.text,
      @required this.assetImage,
      @required this.materialRoute});
}

class AcademicProvider {
  static final List<AcademicItem> _activitiesList = [
    AcademicItem(
        text: 'Applied Chemistry',
        assetImage: 'assets/chem.jpg',
        materialRoute: 'https://www.svce.ac.in/departments/applied-chemistry/'),
    AcademicItem(
        text: 'Applied Maths',
        assetImage: 'assets/maths.jpg',
        materialRoute:
            'https://www.svce.ac.in/departments/applied-mathematics/'),
    AcademicItem(
        text: 'Applied Physics',
        assetImage: 'assets/physics.jpg',
        materialRoute: 'https://www.svce.ac.in/departments/applied-physics/'),
    AcademicItem(
        text: 'Automobile',
        assetImage: 'assets/auto.jpg',
        materialRoute:
            'https://www.svce.ac.in/departments/automobile-engineering'),
    AcademicItem(
        text: 'Biotechnology',
        assetImage: 'assets/biotech.jpg',
        materialRoute: 'https://www.svce.ac.in/departments/biotechnology'),
    AcademicItem(
        text: 'Chemical',
        assetImage: 'assets/chemical.png',
        materialRoute:
            'https://www.svce.ac.in/departments/chemical-engineering'),
    AcademicItem(
        text: 'Civil',
        assetImage: 'assets/civil.png',
        materialRoute: 'https://www.svce.ac.in/departments/civil-engineering'),
    AcademicItem(
        text: 'C S E',
        assetImage: 'assets/cs.png',
        materialRoute:
            'https://www.svce.ac.in/departments/computer-science-and-engineering'),
    AcademicItem(
        text: 'E E E',
        assetImage: 'assets/eee.jpg',
        materialRoute:
            'https://www.svce.ac.in/departments/electrical-and-electronics-engineering'),
    AcademicItem(
        text: 'E C E',
        assetImage: 'assets/ece.jpg',
        materialRoute:
            'https://www.svce.ac.in/departments/electronics-and-communication-engineering'),
    AcademicItem(
        text: 'H S S',
        assetImage: 'assets/hss.jpg',
        materialRoute:
            'https://www.svce.ac.in/departments/humanities-and-social-sciences'),
    AcademicItem(
        text: 'I T',
        assetImage: 'assets/it.jpg',
        materialRoute:
            'https://www.svce.ac.in/departments/information-technology'),
    AcademicItem(
        text: 'Mechanical',
        assetImage: 'assets/mech.jpg',
        materialRoute:
            'https://www.svce.ac.in/departments/mechanical-engineering'),
    AcademicItem(
        text: 'Marine',
        assetImage: 'assets/marine.jpg',
        materialRoute: 'https://www.svce.ac.in/departments/marine-engineering'),
  ];

  List<AcademicItem> get activitiesList {
    return [..._activitiesList];
  }
}

class AcademicGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final activitiesList = AcademicProvider().activitiesList;

    return GridView.builder(
      physics: ScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      itemCount: activitiesList.length,
      itemBuilder: (ctx, index) => AcademicTile(
        text: activitiesList[index].text,
        imageAsset: activitiesList[index].assetImage,
        materialRoute: activitiesList[index].materialRoute,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2.5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}

class AcademicTile extends StatelessWidget {
  final String text;
  final String imageAsset;
  final dynamic materialRoute;
  AcademicTile(
      {@required this.text,
      @required this.imageAsset,
      @required this.materialRoute});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GridTile(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => (materialRoute is String)
                          ? SafeArea(
                              child: SizedBox.fromSize(
                                size: Size(100, 1000),
                                child: WebView(
                                  initialUrl: materialRoute,
                                  javascriptMode: JavascriptMode.unrestricted,
                                ),
                              ),
                            )
                          : materialRoute,
                    ));
              },
              child: Image(image: AssetImage(imageAsset), fit: BoxFit.cover),
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black45,
              title: SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
                child: Text(
                  text,
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.white,
                      letterSpacing: .5,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
