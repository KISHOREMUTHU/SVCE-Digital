import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ease_the_error/doubt_app/customcard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoardApp extends StatefulWidget {
  @override
  _BoardAppState createState() => _BoardAppState();
}

class _BoardAppState extends State<BoardApp> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    var firestoreDb =
        FirebaseFirestore.instance.collection(user.email).snapshots(
              includeMetadataChanges: true,
            );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Sticky Notes',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog(context);
        },
        child: Icon(FontAwesomeIcons.pen),
      ),
      body: StreamBuilder(
        stream: firestoreDb,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          } else {
            return ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  //return Text(snapshot.data.docs[index]['title']);
                  return CustomCard(snapshot: snapshot.data, index: index);
                });
          }
        },
      ),
    );
  }

  _showDialog(BuildContext context) async {
    final user = FirebaseAuth.instance.currentUser;

    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(10),
            content: Column(
              children: [
                Text('Enter Your Note'),
                Expanded(
                  child: TextField(
                    autofocus: true,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Title      : '),
                    controller: titleController,
                  ),
                ),
                Expanded(
                  child: TextField(
                    autofocus: true,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Description : '),
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
                child: Text('Save'),
                onPressed: () {
                  if (titleController.text.isNotEmpty &&
                      descriptionController.text.isNotEmpty) {
                    FirebaseFirestore.instance.collection(user.email).add({
                      "title": titleController.text,
                      "description": descriptionController.text,
                      "timestamp": new DateTime.now(),
                    }).then((response) {
                      print(response.id);
                      Navigator.pop(context);
                      titleController.clear();
                      descriptionController.clear();
                    }).catchError((error) => print('Error'));
                  } else {
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          );
        });
  }
}
