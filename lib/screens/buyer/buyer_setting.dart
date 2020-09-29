import 'package:flutter/material.dart';

class BuyerSetting extends StatefulWidget {
  @override
  _BuyerSettingState createState() => _BuyerSettingState();
}

class _BuyerSettingState extends State<BuyerSetting> {

  //notification swithch
  bool val1 = true;
  void notify(bool e){
    setState(() {
      if (e) {
        val1 = true;
      } else{
        val1 = false;
      }
    });
  } 

  bool val = true;
  void location(bool e){
    setState(() {
      if (e) {
        val = true;
      } else{
        val = false;
      }
    });
  } 
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
            SizedBox(height: 80),
            ListTile(
              leading: Icon(Icons.notifications_none, color: Colors.red,),
              title: Text('Notifications'),
              trailing: Switch(
                value: val1, 
                onChanged: (bool e) => notify(e),
                activeColor: Colors.red,
                ),
            ),
            Divider(color: Colors.grey,),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.red,),
              title: Text('Location'),
              trailing: Switch(
                value: val, 
                onChanged: (bool e) => location(e),
                activeColor: Colors.red,
                ),
            ),
            Divider(color: Colors.grey),
            ListTile(
              leading: Icon(Icons.lock, color: Colors.red,),
              title: Text('Notifications'),
              trailing: Icon(Icons.navigate_next, color: Colors.red,),
            ),
          ],
        ),
      ),
    );
  }
}
