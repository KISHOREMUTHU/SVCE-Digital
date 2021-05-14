import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Academics extends StatefulWidget {
  @override
  _AcademicsState createState() => _AcademicsState();
}

class _AcademicsState extends State<Academics> {
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
                  'Academics',
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
                  "Let's have a look into our academic departments .",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 20),
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
                                          "https://www.svce.ac.in/departments/applied-chemistry/",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    ),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/ac.jpeg'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SizedBox.fromSize(
                                    size: Size(100, 1000),
                                    child: WebView(
                                      initialUrl:
                                          "https://www.svce.ac.in/departments/applied-mathematics",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    ),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/am.jpeg'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SizedBox.fromSize(
                                    size: Size(100, 1000),
                                    child: WebView(
                                      initialUrl:
                                          "https://www.svce.ac.in/departments/applied-physics/",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    ),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/ap.jpeg'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SizedBox.fromSize(
                                    size: Size(100, 1000),
                                    child: WebView(
                                      initialUrl:
                                          "https://www.svce.ac.in/departments/automobile-engineering",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    ),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/auto.jpeg'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SizedBox.fromSize(
                                    size: Size(100, 1000),
                                    child: WebView(
                                      initialUrl:
                                          "https://www.svce.ac.in/departments/biotechnology/",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    ),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/biotech.jpeg'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SizedBox.fromSize(
                                    size: Size(100, 1000),
                                    child: WebView(
                                      initialUrl:
                                          "https://www.svce.ac.in/departments/chemical-engineering",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    ),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/chem.jpeg'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SizedBox.fromSize(
                                    size: Size(100, 1000),
                                    child: WebView(
                                      initialUrl:
                                          "https://www.svce.ac.in/departments/civil-engineering",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    ),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/civil.jpeg'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SizedBox.fromSize(
                                    size: Size(100, 1000),
                                    child: WebView(
                                      initialUrl:
                                          "https://www.svce.ac.in/departments/computer-science-and-engineering",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    ),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/cs.jpeg'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SizedBox.fromSize(
                                    size: Size(100, 1000),
                                    child: WebView(
                                      initialUrl:
                                          "https://www.svce.ac.in/departments/electrical-and-electronics-engineering",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    ),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/eee.jpeg'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SizedBox.fromSize(
                                    size: Size(100, 1000),
                                    child: WebView(
                                      initialUrl:
                                          "https://www.svce.ac.in/departments/electronics-and-communication-engineering",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    ),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/ece.jpeg'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SizedBox.fromSize(
                                    size: Size(100, 1000),
                                    child: WebView(
                                      initialUrl:
                                          "https://www.svce.ac.in/departments/humanities-and-social-sciences",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    ),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/hss.jpeg'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SizedBox.fromSize(
                                    size: Size(100, 1000),
                                    child: WebView(
                                      initialUrl:
                                          "https://www.svce.ac.in/departments/information-technology",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    ),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/it.jpeg'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SizedBox.fromSize(
                                    size: Size(100, 1000),
                                    child: WebView(
                                      initialUrl:
                                          "https://www.svce.ac.in/departments/marine-engineering",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    ),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/mar.jpeg'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SizedBox.fromSize(
                                    size: Size(100, 1000),
                                    child: WebView(
                                      initialUrl:
                                          "https://www.svce.ac.in/departments/mechanical-engineering",
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    ),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        height: 100,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/mech.jpeg'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
