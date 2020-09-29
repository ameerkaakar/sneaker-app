import 'package:flutter/material.dart';

class PendingClearance extends StatefulWidget {
  @override
  _PendingClearanceState createState() => _PendingClearanceState();
}

class _PendingClearanceState extends State<PendingClearance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Pending Clearance',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            SizedBox(height: 40,),
            ListTile(
                title: Text('Funds pending clearance'),
                subtitle: Text('May 4, 2020'),
                trailing: Text('\$543',
                style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text('funds pending clearance'),
                subtitle: Text('May 2, 2020'),
                trailing: Text('\$543',
                style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text('Funds pending clearance'),
                subtitle: Text('May 4, 2020'),
                trailing: Text('\$543',
                style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text('funds pending clearance'),
                subtitle: Text('May 2, 2020'),
                trailing: Text('\$543',
                style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                onTap: () {},
              ),
          ],
        )
      ),
    );
  }
}