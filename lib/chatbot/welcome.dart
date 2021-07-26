import 'package:firebase_auth/firebase_auth.dart';

String commands = """
!lost itemName,itemDescription,place: Used when user lost one of his\/her belongings.
!found itemName,itemDescription,place: Used to intimate the info regarding any lost object.
!cleanliness place,cleanliness_Status: Used to intimate the tidiness report of a particular block\/classroom.
!map: Used to locate Sri Venkateswara College of Engineering, Sriperumbudur.
!events: Used to know about any current events on that day.
!date: Returns the date of the day.
!time: Returns the time.
""";

List welcomeMsg() {
  final User user = FirebaseAuth.instance.currentUser;
  String wlcum = "Hi ${user.displayName}, I am Veronica :)";

  String cmnd = "Type !commands for basic commands";

  return [wlcum, cmnd];
}
