import 'classes.dart';
import 'json.dart';

List lostitems = [], founditems = [];
List coordinators = [];
var i = 0;

void addCoordinators() {
  for (i = 0; i < places.length; ++i) {
    coordinators.add(Coordinator(places[i]["Lost_Found Co-ordinator"],
        places[i]["Lost_Found Co-ordinator Mobile No"], places[i]["Place"]));
  }
}

void refreshLostitems() {
  for (var i = 0; i < lostitems.length; ++i) {
    if (lostitems[i].isReturned) {
      founditems.add(lostitems[i]);
      lostitems.removeAt(i);
    }
  }
}

bool checkFounditems(item) {
  refreshLostitems();
  for (var i = 0; i < founditems.length; ++i) {
    if (item.itemName == founditems[i].itemName &&
        item.description == founditems[i].description &&
        item.block == founditems[i].block) return true;
  }
  return false;
}

void addFounditem(item) {
  founditems.add(Item(item.itemName, item.description, item.block));
}

bool updateFounditem(item) {
  for (var i = 0; i < founditems.length; ++i) {
    if (item.itemName == founditems[i].itemName &&
        item.description == founditems[i].description &&
        item.block == founditems[i].block) {
      founditems[i].isReturned = true;
      return true;
    }
    return false;
  }
}

List viewLostitems() {
  var lost_items = [];
  for (var i = 0; i < lostitems.length; ++i) {
    lost_items.add(
        "${lostitems[i].itemName},${lostitems[i].description},${lostitems[i].place}");
  }
  return lost_items;
}

List viewFounditems() {
  var found_items = [];
  for (var i = 0; i < founditems.length; ++i) {
    found_items.add(
        "${founditems[i].itemName},${founditems[i].description},${founditems[i].place}");
  }
  return found_items;
}
