import 'package:firebase_auth/firebase_auth.dart';

List welcomeMsg() {
  final User user = FirebaseAuth.instance.currentUser;
  String wlcum = "Welcome ${user.displayName}, I am Veronica :)";

  String cmnd = "Basic Commands 👇";
  String commands = """
!lost itemName,itemDescription,place: Used when user lost one of his\/her belongings.
!found itemName,itemDescription,place: Used to intimate the info regarding any lost object.
!cleanliness place,cleanliness_Status: Used to intimate the tidiness report of a particular block\/classroom.
!admission: Used to view admission details at SVCE.
                       
!lost_items: Used to view all the lost items
!found_items:  Used to view all the items which are found.
!item_returned: Used when a found item is returned to its owner.
!map: Used to locate Sri Venkateswara College of Engineering,Sriperumbudur.
!events: Used to know about any current events on that day.
!notes subject,semester: Used to obtain notes for a particular subject (according to the department).
!date: Returns the date of the day.
!time: Returns the time.
""";

  return [wlcum, cmnd, commands];
}
