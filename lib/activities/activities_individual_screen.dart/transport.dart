import 'package:ease_the_error/transport/bus_routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Transport extends StatefulWidget {
  @override
  _TransportState createState() => _TransportState();
}

class _TransportState extends State<Transport> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.amber,
          title: Text(
            'Transport',
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 25),
                Text(
                  'Profile',
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    color: Colors.blue.shade900,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 300,
                  child: Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        "When the College started functioning in the new campus at Pennalur in 1991, the management decided to provide transportation between various parts of Chennai city and the College. Initially eight buses started operating between the college and the city. As the number of courses offered increased, the total strength of the college also increased and now 60 buses are operating from various parts of Chennai to the college.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 16,
                        ),
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
                                builder: (context) => BusRoutes()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            ' Bus Routes ',
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
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SafeArea(
                                      child: SizedBox.fromSize(
                                        size: Size(100, 1000),
                                        child: WebView(
                                          initialUrl:
                                              'https://www.svce.ac.in/facilities/transport/bus-schedule/',
                                          javascriptMode:
                                              JavascriptMode.unrestricted,
                                        ),
                                      ),
                                    )));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'Bus Schedule',
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
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
