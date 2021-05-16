class Coordinator
{
  String name,place,phone_number;
  Coordinator(var v1,var v2,var v3)
  {
    name = v1;
    phone_number = v2;
    place = v3;
  }

}

class Item
{
  String itemName,description,place;
  bool isReturned;

  Item(var v1,var v2,var v3, {var v4 : false})
  {
    itemName = v1;
    description = v2;
    place = v3;
    isReturned = v4;
  }
}