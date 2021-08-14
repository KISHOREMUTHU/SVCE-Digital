import 'package:firebase_auth/firebase_auth.dart';

String commands = """

!map      : Used to locate Sri Venkateswara College of Engineering, Sriperumbudur.\n
!events   : Used to know about any current events on that day.\n
!admission: Used to get admission details.\n
!date     : Returns the date of the day.\n
!time     : Returns the time.\n

""";

List welcomeMsg() {
  final User user = FirebaseAuth.instance.currentUser;
  String wlcum = "Hi ${user.displayName}, I am Veronica :)";

  String cmnd = "Type !commands for basic commands";

  return [wlcum, cmnd];
}
