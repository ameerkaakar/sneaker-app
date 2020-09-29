import 'package:flutter/material.dart';

class BuyerTrackDelivery extends StatefulWidget {
  @override
  _BuyerTrackDeliveryState createState() => _BuyerTrackDeliveryState();
}

class _BuyerTrackDeliveryState extends State<BuyerTrackDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 350,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/map.png'), fit: BoxFit.cover)),
          ),
          AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          Positioned(
            top: 260,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(left: 20, top: 20, right: 20,),
              //padding: const EdgeInsets.all(30.0),
              //width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0))),
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/man.png'),
                      radius: 25,
                    ),
                    title: Text('Jhon Doe', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                    subtitle: Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 20,),
                        Icon(Icons.star, color: Colors.orange, size: 20,),
                        Icon(Icons.star, color: Colors.orange, size: 20,),
                        Icon(Icons.star, color: Colors.orange, size: 20,),
                        Icon(Icons.star, color: Colors.grey, size: 23,),
                      ],
                    ),
                    trailing: Icon(Icons.phone,color: Colors.red, size: 30,)
                  ),
                  Divider(color: Colors.black, thickness: 1),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Arrival', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                      Text('Delivery', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('07:04 pm',),
                      Text('On way',),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Divider(color: Colors.black, thickness: 1),
                  SizedBox(height: 20,),
                  Text('Track History', style: TextStyle(color: Colors.grey, fontSize: 16),),
                  SizedBox(height: 10,),
                  Text('Today 06:04 pm', style: TextStyle(color: Colors.red, fontSize: 16),),
                  SizedBox(height: 10,),
                  Text('Your delivery order', style: TextStyle(fontSize: 16),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
