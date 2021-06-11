import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL() async {
  const String map_url = "https://goo.gl/maps/JTt8tjqgtK4q6dAH9";
  if (await canLaunch(map_url)) {
    await launch(map_url);
  } else {
    throw 'Could not launch $map_url';
  }
}

class Mapscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Column(
        children: [
          Container(
            child: _launchURL(),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
          ),
        ],
      ),
    );
  }
}
