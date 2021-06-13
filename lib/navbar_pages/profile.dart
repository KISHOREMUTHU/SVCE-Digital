import 'package:ease_the_error/profile/developers.dart';
import 'package:ease_the_error/profile/faq.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                ),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.horizontal(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 30,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                height: 110,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.white,
                                  child: ClipOval(
                                      child: Image.network(user.photoURL)),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      //elevation : 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              // SizedBox(height: 20),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.75,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 10),
                                  child: Text(user.displayName,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: "OpenSansBold",
                                        fontSize: 20,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                user.email,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "OpenSans",
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Faq()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        //elevation : 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Center(
                                    child: Icon(
                                      Icons.question_answer,
                                      size: 32,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                Text('FAQs',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                    )),
                                SizedBox(width: 110),

                                Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_right,
                                      size: 34,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),

                                // SizedBox(height: 20),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
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
                                            "https://www.svce.ac.in/contact-us/",
                                        javascriptMode:
                                            JavascriptMode.unrestricted,
                                      ),
                                    )));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        //elevation : 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Center(
                                    child: Icon(
                                      Icons.phone,
                                      size: 32,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text('Contact',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                    )),
                                SizedBox(width: 86),

                                Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_right,
                                      size: 34,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),

                                // SizedBox(height: 20),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DeveloperTeam()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        //elevation : 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: Center(
                                    child: Icon(
                                      Icons.person,
                                      size: 32,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text('Developer Team     ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                    )),
                                SizedBox(width: 8),

                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_right,
                                      size: 34,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),

                                // SizedBox(height: 20),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
