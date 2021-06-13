import 'package:ease_the_error/activities/activities_individual_screen.dart/academics.dart';
import 'package:ease_the_error/activities/activities_individual_screen.dart/canteen.dart';
import 'package:ease_the_error/activities/activities_individual_screen.dart/dispensary.dart';
import 'package:ease_the_error/activities/activities_individual_screen.dart/library.dart';
import 'package:ease_the_error/activities/activities_individual_screen.dart/placements.dart';
import 'package:ease_the_error/activities/activities_individual_screen.dart/transport.dart';
import 'package:flutter/material.dart';

class ActivityItem {
  final String text;
  final String asssetImage;
  final dynamic materialRoute;
  ActivityItem(
      {@required this.text,
      @required this.asssetImage,
      @required this.materialRoute});
}

class ActivityProvider {
  static final List<ActivityItem> _activitiesList = [
    ActivityItem(
        text: 'Academics',
        asssetImage: 'assets/academics.jpeg',
        materialRoute: Academics()),
    ActivityItem(
        text: 'Placements',
        asssetImage: 'assets/placement.jpeg',
        materialRoute: Placements()),
    ActivityItem(
        text: 'Canteen',
        asssetImage: 'assets/canteen.jpeg',
        materialRoute: Canteen()),
    ActivityItem(
        text: 'Library',
        asssetImage: 'assets/library.jpeg',
        materialRoute: Library()),
    ActivityItem(
        text: 'Dispensary',
        asssetImage: 'assets/dispensary.jpeg',
        materialRoute: Dispensary()),
    ActivityItem(
        text: 'Transport',
        asssetImage: 'assets/bus.jpeg',
        materialRoute: Transport()),
    ActivityItem(
        text: 'Hostel',
        asssetImage: 'assets/hostel.jpg',
        materialRoute: "https://www.svce.ac.in/facilities/hostel/"),
    ActivityItem(
        text: 'Sports',
        asssetImage: 'assets/sports.jpeg',
        materialRoute: "https://www.svce.ac.in/facilities/sports/home/"),
    ActivityItem(
        text: 'Research',
        asssetImage: 'assets/research.jpg',
        materialRoute:
            "https://www.svce.ac.in/research/office-of-the-dean-research/"),
    ActivityItem(
        text: 'Student Council',
        asssetImage: 'assets/sa.jpeg',
        materialRoute:
            "https://www.svce.ac.in/research/office-of-the-dean-research/"),
  ];

  List<ActivityItem> get activitiesList {
    return [..._activitiesList];
  }
}
// ActivityItem('Academics','assets/academics.jpeg', navigateToAcademic(context)
