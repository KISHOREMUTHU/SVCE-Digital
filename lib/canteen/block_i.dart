import 'package:flutter/material.dart';

class FirstBlock extends StatefulWidget {
  @override
  _FirstBlockState createState() => _FirstBlockState();
}

class _FirstBlockState extends State<FirstBlock> {
  var oatList = [
    {
      "sl.no": 2,
      "session": "lunch",
      "item": "Noodles",
      "price": "Rs. 45",
      "availability_time": "11.00am-1.30pm",
      "path": "assets\/noodles.jpeg"
    },
    {
      "sl.no": 3,
      "session": "lunch",
      "item": "Barota",
      "price": "Rs. 30",
      "availability_time": "11.00am-1.30pm",
      "path": "assets\/barota.jpeg"
    },
    {
      "sl.no": 7,
      "session": "lunch",
      "item": "Sambar Rice",
      "price": "Rs. 40",
      "availability_time": "11.00am-1.30pm",
      "path": "assets\/sambarrice.jpeg"
    },
    {
      "sl.no": 8,
      "session": "lunch",
      "item": "Curd Rice",
      "price": "Rs. 40",
      "availability_time": "11.00am-1.30pm",
      "path": "assets\/curdrice.jpeg"
    },
    {
      "sl.no": 10,
      "session": "lunch",
      "item": "Pappad",
      "price": "Rs. 5",
      "availability_time": "11.00am-1.30pm",
      "path": "assets\/papads.jpeg"
    },
    {
      "sl.no": 11,
      "session": "lunch",
      "item": "Meals",
      "price": "Rs. 50",
      "availability_time": "11.00am-1.30pm",
      "path": "assets\/fullmeals.jpeg"
    },
    {
      "sl.no": 12,
      "session": "lunch\/break",
      "item": "Coffee",
      "price": "Rs. 15",
      "availability_time": "8.00am-3.00pm",
      "path": "assets\/coffee.jfif"
    },
    {
      "sl.no": 13,
      "session": "lunch\/break",
      "item": "Tea",
      "price": "Rs. 15",
      "availability_time": "8.00am-3.00pm",
      "path": "assets\/tea.jfif"
    },
    {
      "sl.no": 20,
      "session": "lunch\/break",
      "item": "Frooti",
      "price": "Rs. 15",
      "availability_time": "10.00am-11.00am,2.30pm-4.00pm",
      "path": "assets\/frooti.jpeg"
    },
    {
      "sl.no": 21,
      "session": "lunch\/break",
      "item": "Appy",
      "price": "Rs. 15",
      "availability_time": "10.00am-11.00am,2.30pm-4.00pm",
      "path": "assets\/appy.jpeg"
    },
    {
      "sl.no": 22,
      "session": "lunch\/break",
      "item": "Cavins Milkshakes",
      "price": "Rs. 25",
      "availability_time": "10.00am-11.00am,2.30pm-4.00pm",
      "path": "assets\/kavinsmilkshake.jpeg"
    },
    {
      "sl.no": 24,
      "session": "lunch\/break",
      "item": "Vada",
      "price": "Rs. 10",
      "availability_time": "10.00am-11.00am,2.30pm-4.00pm",
      "path": "assets\/vada.jpeg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Block I Canteen Foods',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: oatList.length,
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            session: oatList[index]['session'],
            time: oatList[index]['availability_time'],
            price: oatList[index]['price'].toString(),
            item: oatList[index]['item'],
            image: oatList[index]['path'],
          );
        },
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String session;
  final String price;
  final String item;
  final String image;
  final String time;

  const SingleProduct(
      {Key key, this.session, this.price, this.item, this.image, this.time})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PorductDetails(
                      session: session,
                      time: time,
                      price: price,
                      image: image,
                      item: item,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: 340,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
              ),
              Center(
                child: Container(
                  //  width: 35,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(image),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Text(
                      item,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                    SizedBox(height: 10),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PorductDetails extends StatefulWidget {
  final String session;
  final String price;
  final String item;
  final String image;
  final String time;

  const PorductDetails(
      {Key key, this.session, this.price, this.item, this.image, this.time})
      : super(key: key);
  @override
  _PorductDetailsState createState() => _PorductDetailsState();
}

class _PorductDetailsState extends State<PorductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          new Container(
            height: 300,
            child: GridTile(
              child: Container(
                  color: Colors.white, child: Image.asset(widget.image)),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.item,
                    style: TextStyle(
                      fontFamily: 'Tinos',
                      fontSize: 20,
                    ),
                  ),
                  title: Row(
                    children: [
                      SizedBox(width: 30),
                      Expanded(
                        child: Text(
                          "     " + widget.price + " /-",
                          style: TextStyle(
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Divider(),
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Food Name          ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.item,
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Cost                     ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          " " + widget.price + " /-",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Session               ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          " " + widget.session,
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Available Time ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 220,
                          // direction: Axis.vertical,
                          //fit : FlexFit.tight,
                          // fit : FlexFit.loose,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.time,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Similar Products',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tinos',
                      ),
                    ),
                  ),
                  Container(
                    height: 360,
                    child: SimilarProducts(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var oatList = [
    {
      "sl.no": 12,
      "session": "lunch\/break",
      "item": "Coffee",
      "price": "Rs. 15",
      "availability_time": "8.00am-3.00pm",
      "path": "assets\/coffee.jfif"
    },
    {
      "sl.no": 13,
      "session": "lunch\/break",
      "item": "Tea",
      "price": "Rs. 15",
      "availability_time": "8.00am-3.00pm",
      "path": "assets\/tea.jfif"
    },
    {
      "sl.no": 20,
      "session": "lunch\/break",
      "item": "Frooti",
      "price": "Rs. 15",
      "availability_time": "10.00am-11.00am,2.30pm-4.00pm",
      "path": "assets\/frooti.jpeg"
    },
    {
      "sl.no": 21,
      "session": "lunch\/break",
      "item": "Appy",
      "price": "Rs. 15",
      "availability_time": "10.00am-11.00am,2.30pm-4.00pm",
      "path": "assets\/appy.jpeg"
    },
    {
      "sl.no": 22,
      "session": "lunch\/break",
      "item": "Cavins Milkshakes",
      "price": "Rs. 25",
      "availability_time": "10.00am-11.00am,2.30pm-4.00pm",
      "path": "assets\/kavinsmilkshake.jpeg"
    },
    {
      "sl.no": 24,
      "session": "lunch\/break",
      "item": "Vada",
      "price": "Rs. 10",
      "availability_time": "10.00am-11.00am,2.30pm-4.00pm",
      "path": "assets\/vada.jpeg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: oatList.length,
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          session: oatList[index]['session'],
          time: oatList[index]['availability_time'],
          price: oatList[index]['price'].toString(),
          item: oatList[index]['item'],
          image: oatList[index]['path'],
        );
      },
    );
  }
}
