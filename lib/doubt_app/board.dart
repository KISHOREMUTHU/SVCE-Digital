import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class BoardApp extends StatefulWidget {
  @override
  _BoardAppState createState() => _BoardAppState();
}

class _BoardAppState extends State<BoardApp> {

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    var firestoreDb = FirebaseFirestore.instance.collection(user.email).snapshots(
      includeMetadataChanges: true,
    );
    return Scaffold(
      appBar : AppBar(
        
      ),
    );
  }
}
