import 'package:ease_the_error/transport/bus_routes.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Transport extends StatefulWidget {
  @override
  _TransportState createState() => _TransportState();
}

class _TransportState extends State<Transport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Text(
                'Transport',
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
                "Let's have a look into our transport system !!!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Text(
                'Profile',
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
                "When the College started functioning in the new campus at Pennalur in 1991, the management decided to provide transportation between various parts of Chennai city and the College. Initially eight buses started operating between the college and the city. As the number of courses offered increased, the total strength of the college also increased and now 60 buses are operating from various parts of Chennai to the college.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BusRoutes()));
                  },
                  child: Container(
                    width: 340,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(70)),
                    child: Center(
                      child: Text(
                        'Check Your Bus Route ',
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
                            builder: (context) => SizedBox.fromSize(
                                  size: Size(100, 1000),
                                  child: WebView(
                                    initialUrl:
                                        'https://www.svce.ac.in/facilities/transport/bus-schedule/',
                                    javascriptMode: JavascriptMode.unrestricted,
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
                        'Bus Schedule',
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
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
