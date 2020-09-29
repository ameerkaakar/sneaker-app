import 'package:flutter/material.dart';

class BuyerNotification extends StatefulWidget {
  @override
  _BuyerNotificationState createState() => _BuyerNotificationState();
}

class _BuyerNotificationState extends State<BuyerNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 10, top: 0, right: 10),
        child: ListView(
          children: [
            SizedBox(height: 30),
            _notification('Successful', 'Your order is submited successfully'),
            SizedBox(height: 20),
            _notification('Successful', 'Your order is submited successfully'),
          ],
        ),
      ),
    );
  }
}

Widget _notification(String heading, String data) {
  return Container(
    decoration: BoxDecoration(
      
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 5,
          offset: Offset(0, 5),
        ),
      ],
    ),
    child: ListTile(
      title: Text(heading, style: TextStyle(fontWeight: FontWeight.w700),),
      subtitle: Text(data),
    ),
  );
}
