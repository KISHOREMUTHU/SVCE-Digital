import 'package:flutter/material.dart';

class Dispensary extends StatefulWidget {
  @override
  _DispensaryState createState() => _DispensaryState();
}

class _DispensaryState extends State<Dispensary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 75),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Text(
                'Dispensary',
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
                "Let's have a look into our dispensary !!!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'About',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "The Medical centre of SVCE was instituted in the year 2008 with 6 beds, a resident Medical Officer, a trained residential nurse and a qualified lab technician. Besides that, the college has first aid kits made available in almost all blocks. A 24-hour ambulance facility, adequate pharmaceutical support, medical lab services are a few of the mentionable services offered.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Health Care Facilities',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Health centre provides efficient and timely services to students, members of faculty, staff and contract workers. The centre, in addition to attending to the patients’, provides counselling to students and offers medical laboratory services",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "SVCE has signed an MOU with The Apollo SHINE Foundation, an initiative by Apollo Hospitals groups that focuses exclusively on students community.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "As part of the medical counselling activity and to monitor all the individuals’ well-being, a preliminary health check-up from Apollo Shine for all students and faculty and staff members is conducted at the beginning of every academic year. A thorough check-up includes ECG, ECHO, dental and eye examination besides the basic blood sugar and blood pressure tests. The institute further facilitates laboratory investigation of all necessary cases. The 24-hour ambulance facility is operated not only as a shuttle service in campus but also offers commutation services to nearby multi-speciality hospitals for further treatment in case of emergency and severe health issues. Exclusive facilities and services are also offered for the physically challenged individuals as well. Above all, the institution supports its faculty and staff by offering an unparalleled medical reimbursement facility.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "The Medical Centre of SVCE conducts awareness programmes every year through Apollo Shine Foundation in order to impart information on personal hygiene and survival/rescue techniques during emergency situations.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Besides all treatments offered for physiological conditions, the medical centre through a professional counsellor, provides a 24-hour service for the faculty, students and residential scholars. The Centre helps students to develop and improve their coping skills in order to deal with personal, emotional, interpersonal, and academic concerns and in the process provide a caring and supportive environment that encourages their personal growth and development.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'The Health Care Centre’s Staff Details',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Container(
                width: 340,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Dr. M. Jeyamalar MD',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Medical officer",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Container(
                width: 340,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Dr. Naseem Akthar',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      " Counsellor ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Container(
                width: 340,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Ms. K. Chamundeeswari',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Nurse",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Container(
                width: 340,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Mr. V. Mohan',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Lab technician",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Contact',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Container(
                width: 340,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '044 - 27152000',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Medical Officer",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
