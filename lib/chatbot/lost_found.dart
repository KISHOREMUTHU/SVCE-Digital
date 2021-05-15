class Coordinator
{
  String name,phone_number,block;
  Coordinator(var v1,var v2,var v3)
  {
    name = v1;
    phone_number = v2;
    block = v3;
  }

}

class Item
{
  String itemName,description, block;
  bool isFound;

  Item(var v1,var v2,var v3, {var v4 : false})
  {
    itemName = v1;
    description = v2;
    block = v3;
    isFound = v4;
  }
}
List lostitems = [],founditems = [Item("watch","brown","3",v4:true)],coordinators = [Coordinator("Hari Kheshav","987654321","3"),Coordinator("Kishore","987654321","2"),Coordinator("Buvanesh","987654321","4"),Coordinator("Nithin","987654321","5"),Coordinator("Kitty","987654321","1")];

void refreshLostitems()
{
  for(var i = 0;i<lostitems.length;++i)
    {
      if(lostitems[i].isFound)
        {
          founditems.add(lostitems[i]);
          lostitems.removeAt(i);
        }
    }
}


bool checkFounditems(item)
{
  refreshLostitems();
  for(var i = 0;i<founditems.length;++i)
    {
      if(founditems[i].itemName == item.itemName && founditems[i].description == item.idescription && founditems[i].block == item.bock)
        return true;

    }
  return false;
}






