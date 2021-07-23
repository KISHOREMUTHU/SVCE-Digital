import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:share/share.dart';

class CustomCard extends StatelessWidget {
  final QuerySnapshot snapshot;
  final int index;

  const CustomCard({Key key, this.snapshot, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var docId = snapshot.docs[index].id;

    TextEditingController titleController =
        TextEditingController(text: snapshot.docs[index]['title']);
    TextEditingController descriptionController =
        TextEditingController(text: snapshot.docs[index]['description']);
    var timeToDate = new DateTime.fromMillisecondsSinceEpoch(
        snapshot.docs[index]['timestamp'].seconds * 1000);
    var dateFormatted = new DateFormat('EEEE , MMM d , y').format(timeToDate);
    final String user = FirebaseAuth.instance.currentUser.email;

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.amberAccent.shade100,
          boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            ListTile(
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      snapshot.docs[index]['title'],
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: GoogleFonts.montserrat(
                        fontSize: 26,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withAlpha(100), blurRadius: 10.0),
                  ],
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/notes.jpg'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(FontAwesomeIcons.edit),
                  iconSize: 25,
                  color: Colors.blue.shade900,
                  onPressed: () async {
                    await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            contentPadding: EdgeInsets.all(10),
                            content: Column(
                              children: [
                                Text(
                                  'Update Notes',
                                  style: TextStyle(fontFamily: 'Tinos'),
                                ),
                                Expanded(
                                  child: TextField(
                                    autofocus: true,
                                    autocorrect: true,
                                    decoration: InputDecoration(
                                        labelText: 'Title     ',
                                        labelStyle: TextStyle(
                                          fontSize: 19,
                                        ),
                                        prefixText:
                                            "                         "),
                                    controller: titleController,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    autofocus: true,
                                    autocorrect: true,
                                    decoration: InputDecoration(
                                        labelText: 'Description  ',
                                        labelStyle: TextStyle(
                                          fontSize: 19,
                                        ),
                                        prefixText:
                                            "                         "),
                                    controller: descriptionController,
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                            actions: [
                              MaterialButton(
                                child: Text('Cancel'),
                                onPressed: () {
                                  titleController.clear();
                                  descriptionController.clear();

                                  Navigator.pop(context);
                                },
                              ),
                              MaterialButton(
                                //color : Colors.grey,
                                child: Text('Update'),
                                onPressed: () {
                                  if (titleController.text.isNotEmpty &&
                                      descriptionController.text.isNotEmpty) {
                                    FirebaseFirestore.instance
                                        .collection(user)
                                        .doc(docId)
                                        .update({
                                      "title": titleController.text,
                                      "description": descriptionController.text,
                                      "timestamp": new DateTime.now(),
                                    }).then((response) {
                                      //  print(response.id);
                                      Navigator.pop(context);
                                      titleController.clear();
                                      descriptionController.clear();
                                    }).catchError((error) => print('Error'));
                                  }
                                },
                              ),
                            ],
                          );
                        });
                  },
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(FontAwesomeIcons.trashAlt),
                  iconSize: 25,
                  color: Colors.red,
                  onPressed: () async {
                    await FirebaseFirestore.instance
                        .collection(user)
                        .doc(docId)
                        .delete();
                  },
                ),
                SizedBox(width: 40),
                MaterialButton(
                  color: Colors.white,
                  child: Text(
                    "See details",
                    style: GoogleFonts.montserrat(
                      color: Colors.blue.shade900,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ShowDetails(context, index)));
                  },
                ),
                SizedBox(width: 10),
                MaterialButton(
                    child: Text(
                      'Share',
                      style: GoogleFonts.montserrat(
                        color: Colors.blue.shade900,
                      ),
                    ),
                    color: Colors.white,
                    onPressed: () {
                      Sharing(context, index);
                    }),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    dateFormatted,
                    style: GoogleFonts.montserrat(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  void Sharing(BuildContext context, int index) {
    final user = FirebaseAuth.instance.currentUser;

    final RenderBox box = context.findRenderObject();
    final String text =
        '''Notes of ${user.displayName} \n\n Title : ${snapshot.docs[index]['title']} \n\n Description : ${snapshot.docs[index]['description']} ''';
    Share.share(
      text,
      subject: 'Notes of ${user.displayName} ',
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
    );
  }

  Widget ShowDetails(BuildContext context, int index) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          'Note Details',
          style: GoogleFonts.montserrat(color: Colors.white),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/activites_bg.png')),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Container(
                  width: MediaQuery.of(context).size.height * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          snapshot.docs[index]['title'],
                          style: GoogleFonts.montserrat(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Container(
                  width: MediaQuery.of(context).size.height * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          snapshot.docs[index]['description'],
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
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
