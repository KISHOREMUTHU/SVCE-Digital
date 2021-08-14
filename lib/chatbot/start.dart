import 'package:bubble/bubble.dart';
import 'package:ease_the_error/chatbot/cleanliness.dart';
import 'package:ease_the_error/chatbot/lost_found.dart';
import 'package:ease_the_error/chatbot/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'botcommands.dart';

class MyChat extends StatefulWidget {
  MyChat({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyChatState createState() => _MyChatState();
}

class _MyChatState extends State<MyChat> {
  final messageInsert = TextEditingController();
  List<Map> messsages = [];

  @override
  void initState() {
    // TODO: implement initState
    var value = welcomeMsg();
    setState(() {
      messsages.insert(0, {
        "data": 0,
        "message": value[0],
      });
    });
    setState(() {
      messsages.insert(0, {
        "data": 0,
        "message": value[1],
      });
    });

    addCoordinators();
    addcleanlinessCoordinators();
    super.initState();
  }

  void response(query) {
    addQueries();

    if (query.startsWith('!commands') || query.contains('command')) {
      setState(() {
        messsages.insert(0, {
          "data": 0,
          "message": commands,
        });
      });
    } else if (query == "!map" || query.contains('map')) {
      _launchURL("https://goo.gl/maps/JTt8tjqgtK4q6dAH9");
    } else if (query == "!admission" || query.contains('admission')) {
      _launchURL("https://www.svce.ac.in/admission/programs-offered/");
    } else if (query == "!events" ||
        query.contains('events') ||
        query.contains('news')) {

      _launchURL( "https://www.svce.ac.in/flashnews/");

    } else {
      String response = getResopnse(query);
      setState(() {
        messsages.insert(0, {"data": 0, "message": response});
      });
    }
  }

  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: 37,
                  height: 37,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/bot.jpeg'),
                    ),
                  ),
                ),
              ),
              Text(
                "Ask Veronica",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              Icon(
                Icons.bolt,
                color: Colors.yellow,
                size: 40.0,
              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/activites_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                Flexible(
                    child: ListView.builder(
                        reverse: true,
                        itemCount: messsages.length,
                        itemBuilder: (context, index) => chat(
                            messsages[index]["message"].toString(),
                            messsages[index]["data"]))),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        color: Colors.white,
                        child: ListTile(
                          title: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.grey[400],
                            ),
                            padding: EdgeInsets.only(left: 15),
                            child: Center(
                              child: TextFormField(
                                controller: messageInsert,
                                decoration: InputDecoration(
                                  hintText: "Enter a Message...",
                                  contentPadding: EdgeInsets.only(bottom: 10.0),
                                  hintStyle: TextStyle(
                                    color: Colors.black45,
                                  ),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                          trailing: IconButton(
                              icon: Icon(
                                Icons.send,
                                size: 30.0,
                                color: Colors.blue[900],
                              ),
                              onPressed: () {
                                if (messageInsert.text.isEmpty) {
                                  print("empty message");
                                } else {
                                  setState(() {
                                    messsages.insert(0, {
                                      "data": 1,
                                      "message": messageInsert.text
                                    });
                                  });
                                  response(messageInsert.text);
                                  messageInsert.clear();
                                }
                                FocusScopeNode currentFocus =
                                    FocusScope.of(context);
                                if (!currentFocus.hasPrimaryFocus) {
                                  currentFocus.unfocus();
                                }
                              }),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  //for better one i have use the bubble package check out the pubspec.yaml

  Widget chat(String message, int data) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment:
            data == 1 ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          data == 0
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image:
                        DecorationImage(image: AssetImage("assets/bot.jpeg")),
                  ),
                )
              : Container(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Bubble(
                radius: Radius.circular(5.0),
                color: data == 0 ? Colors.blue[900] : Colors.amber[600],
                elevation: 0.0,
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Flexible(
                          child: Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.67,
                        ),
                        child: Text(
                          message,
                          style: GoogleFonts.montserrat(
                            color: data == 0 ? Colors.white : Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ))
                    ],
                  ),
                )),
          ),
          data == 1
              ? Container(
                  height: 40,
                  width: 40,
                  child: CircleAvatar(
                    backgroundImage: user.photoURL != null
                        ? NetworkImage(user.photoURL)
                        : AssetImage("assets/default.jpg"),
                  ),
                )
              : Container(),
        ],
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
