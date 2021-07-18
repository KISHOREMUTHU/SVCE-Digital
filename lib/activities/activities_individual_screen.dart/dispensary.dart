import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dispensary extends StatefulWidget {
  @override
  _DispensaryState createState() => _DispensaryState();
}

class _DispensaryState extends State<Dispensary> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.amber,
          title: Text(
            'Dispensary',
            style: GoogleFonts.montserrat(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/activites_bg.png'),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'About',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.montserrat(
                      fontSize: 27,
                      color: Colors.blue.shade900,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "The Medical centre of SVCE was instituted in the year 2008 with 6 beds, a resident Medical Officer, a trained residential nurse and a qualified lab technician. Besides that, the college has first aid kits made available in almost all blocks. A 24-hour ambulance facility, adequate pharmaceutical support, medical lab services are a few of the mentionable services offered.",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Health Care Facilities',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 27,
                      color: Colors.blue.shade900,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Health centre provides efficient and timely services to students, members of faculty, staff and contract workers. The centre, in addition to attending to the patients’, provides counselling to students and offers medical laboratory services",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "SVCE has signed an MOU with The Apollo SHINE Foundation, an initiative by Apollo Hospitals groups that focuses exclusively on students community.",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "As part of the medical counselling activity and to monitor all the individuals’ well-being, a preliminary health check-up from Apollo Shine for all students and faculty and staff members is conducted at the beginning of every academic year. A thorough check-up includes ECG, ECHO, dental and eye examination besides the basic blood sugar and blood pressure tests. The institute further facilitates laboratory investigation of all necessary cases. The 24-hour ambulance facility is operated not only as a shuttle service in campus but also offers commutation services to nearby multi-speciality hospitals for further treatment in case of emergency and severe health issues. Exclusive facilities and services are also offered for the physically challenged individuals as well. Above all, the institution supports its faculty and staff by offering an unparalleled medical reimbursement facility.",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "The Medical Centre of SVCE conducts awareness programmes every year through Apollo Shine Foundation in order to impart information on personal hygiene and survival/rescue techniques during emergency situations.",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Besides all treatments offered for physiological conditions, the medical centre through a professional counsellor, provides a 24-hour service for the faculty, students and residential scholars. The Centre helps students to develop and improve their coping skills in order to deal with personal, emotional, interpersonal, and academic concerns and in the process provide a caring and supportive environment that encourages their personal growth and development.",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'The Health Care Centre’s Staff Details',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27,
                      color: Colors.blue.shade900,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Dr. M. Jeyamalar M.D.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Medical officer",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Dr. Naseem Akthar',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          " Counsellor ",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Ms. K. Chamundeeswari',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Nurse",
                          textAlign: TextAlign.center,

                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Mr. V. Mohan',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lab technician",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20),
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
                    style: GoogleFonts.montserrat(
                      fontSize: 27,
                      color: Colors.blue.shade900,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withAlpha(100),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          '044 - 27152000',
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Medical Officer",
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 75),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
