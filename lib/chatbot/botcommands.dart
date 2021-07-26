import 'package:flutter/material.dart';

var dt = DateTime.now();

class Queries {
  List queries = [];
}

List responses = [
  "Hey There, I am Veronica",
  "You're welcome 😊",
  getDate(),
  gettime()
];
var queries = [Queries(), Queries(), Queries(), Queries()];

void addQueries() {
  queries[0].queries = [
    "hi",
    "heyy",
    "hi there",
    "whats your name ?",
    "hello",
    "hey",
    "hey buddy",
    "hey there",
    "hey there !"
  ];
  queries[1].queries = ["thank you"];
  queries[2].queries = ["!date"];
  queries[3].queries = ["!time"];
}

String getResopnse(query) {
  for (var i = 0; i < queries.length; ++i) {
    for (var j = 0; j < queries[i].queries.length; ++j) {
      if (queries[i].queries.contains(query.toLowerCase())) {
        return responses[i];
      }
    }
  }
  return "Sorry, I can't understand 🤔";
}

String getDate() {
  Map months = {
    1: 'Jan',
    2: 'Feb',
    3: 'Mar',
    4: 'Apr',
    5: 'May',
    6: 'Jun',
    7: 'Jul',
    8: 'Aug',
    9: 'Sep',
    10: 'Oct',
    11: 'Nov',
    12: 'Dec'
  };
  return '${months[dt.month]} ${dt.day}, ${dt.year}';
}

String gettime() {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  String period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";
  String time = '';
  var hour = _timeOfDay.hourOfPeriod;
  var minute = _timeOfDay.minute;

  if (period == 'PM') {
    if (hour == 0)
      hour = 12;
    else if (hour > 12) hour -= 12;
  } else if (period == 'AM') {
    if (hour == 0) hour = 12;
  }

  if (hour < 10)
    time += '0' + hour.toString();
  else
    time += hour.toString();

  time += ':';
  if (minute < 10) time += '0' + minute.toString();
  print(time);
  return time + minute.toString() + "  " + period;
}
