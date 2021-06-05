import 'package:carousel_pro/carousel_pro.dart';
import 'package:ease_the_error/chatbot/start.dart';
import 'package:ease_the_error/doubt_app/board.dart';
import 'package:ease_the_error/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget image_carousel = new Container(
    height: 180.0,
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
  );
  Widget job_carousel = new Container(
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        title: Text(
          'SVCE Mobile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      drawer: new Drawer(
        // var user = FirebaseAuth.instance.currentUser;

        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Welcome !!!",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        user.displayName,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SizedBox.fromSize(
                              size: Size(100, 1000),
                              child: WebView(
                                initialUrl: "https://www.svce.ac.in/",
                                javascriptMode: JavascriptMode.unrestricted,
                              ),
                            )));
              },
              child: ListTile(
                title: Text('Events'),
                leading: Icon(
                  Icons.control_point,
                  color: Colors.grey,
                ),
                trailing: Icon(Icons.arrow_right, size: 32),
              ),
            ),
            // SizedBox(height: 5),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: ListTile(
                title: Text('Ask Veronica'),
                leading: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                trailing: Icon(Icons.arrow_right, size: 32),
              ),
            ),
            // SizedBox(height: 5),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BoardApp()));
              },
              child: ListTile(
                title: Text('Sticky Notes'),
                leading: Icon(
                  Icons.notes,
                  color: Colors.grey,
                ),
                trailing: Icon(Icons.arrow_right, size: 32),
              ),
            ),
            //  SizedBox(height: 5),
            Divider(),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
              },
              child: ListTile(
                title: Text('Logout'),
                leading: Icon(
                  Icons.logout,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            image_carousel,
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'About Us',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 27,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'SVCE is a unit of Sri Venkateswara Educational and Health Trust (SVEHT). The Trust was founded on 1 August 1985 at the behest and benign blessings of His Holiness Pujashree Kanchi Kamakoti Peedathipathi Sri Jayendra Saraswathi Swamigal. Dr. A. C. Muthiah, a renowned engineer, industrialist and philanthropist, is the Chairman of the Governing Council of the college. The college is in a 95 acre lush green Campus. It is housed in architecturally exquisite buildings with ample infrastructure such as classrooms, laboratories, libraries, sports arena, canteen, hostels, dispensary, bank etc.,',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Mission',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 27,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "To develop SVCE as a 'CENTRE OF EXCELLENCE' offering Engineering Education to men and women at undergraduate and postgraduate degree levels, bringing out their total personality, emphasising ethical values and preparing them to meet the growing challenges of the industry and diverse societal needs of our nation.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Quality Policy',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 27,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "To impart quality education in Science, Engineering and Technology, nurturing right attitudes towards scholarship, research and entrepreneurship, enabling students to meet the challenges of industry, including Standards of Training, Certification and Watch keeping (STCW) requirements, society and environment.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
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
                  style: TextStyle(
                    fontSize: 27,
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
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset('assets/act.jpeg'),
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
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                alumni_carousel,
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
