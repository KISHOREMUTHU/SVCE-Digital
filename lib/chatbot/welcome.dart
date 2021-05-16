import 'package:firebase_auth/firebase_auth.dart';

List welcomeMsg() {
  final User user = FirebaseAuth.instance.currentUser;
  String wlcum = "Welcome ${user.displayName}, I am Welcome :)";

  String commands = """

Command         Description


!lost itemName itemDescription block_number :                 Used when user lost 
                                                              one of his\/her 
                                                               belongings.

!found:               Used to intimate the 
                          info regarding any 
                          lost object.

!cleanliness :    Used to intimate the 
                          tidiness report of a 
                          particular block
                          \/classroom.

!map:                 Used to locate Sri 
                        Venkateswara College 
                        of Engineering, 
                        Sriperumbudur.

!events:              Used to know about 
                        any current events on 
                        that day.

!notes:               Used to obtain notes 
                        for a particular subject 
                        (according to the 
                          department).

!date:                Returns the date of 
                          the day.

!time:                Returns the time.

""";

  return [wlcum, commands];
}
