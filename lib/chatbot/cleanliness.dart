import 'classes.dart';
import 'json.dart';
class Place
{
  String place,status;

  Place(var v1,{var v2:"clean"})
  {

    place = v1;
    status = v2;
  }

}


List cleanliness_coordinators = [];
List complaints = [];


void addSanitationReport(cleanData)
{
  complaints.add(Place(cleanData[0],v2:cleanData[1]));
}


void addcleanlinessCoordinators()
{
  for(var i = 0;i<places.length;++i)
  {
    cleanliness_coordinators.add(Coordinator(places[i]["Cleanliness Co-ordinator"],places[i]["Cleanliness Co-ordinator Mobile No"],places[i]["Place"]));
  }

}

