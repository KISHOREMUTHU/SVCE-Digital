import 'package:flutter/material.dart';

class Preparation extends StatefulWidget {
  @override
  _PreparationState createState() => _PreparationState();
}

class _PreparationState extends State<Preparation> {
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
                padding: EdgeInsets.all(20),
                child: Text(
                  'Preparation for Placement',
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  'Placement training plays a major role in shaping up the career goals of students. It is the dream of every engineering student to get placed in a top organization visiting their campus for recruitment. Keeping this key aspect into consideration, it is realized that training is important for engineering students to enhance their employability skills and achieve good placement in various Industries.',
                  style: TextStyle(
                    fontSize: 18,
                    //color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Text(
                  "1. To create awareness about 'career planning' and 'career mapping' among the students.",
                  style: TextStyle(
                    fontSize: 18,
                    //  color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Text(
                  "2. To train the students on 'Personality development'.",
                  style: TextStyle(
                    fontSize: 18,
                    //      color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Text(
                  "3. To organize Various Training Programmes to train the students in the areas of Quantitative Aptitude, Logical reasoning and Verbal reasoning.",
                  style: TextStyle(
                    fontSize: 18,
                    //   color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Text(
                  "4. To train the students through Mock Interviews to perform well in the professional interviews as per the Industries expectations.",
                  style: TextStyle(
                    fontSize: 18,
                    // color: Colors.blue,
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
