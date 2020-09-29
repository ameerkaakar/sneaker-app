import 'package:flutter/material.dart';
import 'package:kickstarter/screens/buyer/buyer_morescreen.dart';

class BuyerProfile extends StatefulWidget {
  @override
  _BuyerProfileState createState() => _BuyerProfileState();
}

class _BuyerProfileState extends State<BuyerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red[600],
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //padding: EdgeInsets.only(left: 30, right: 30),
          child: ListView(
            children: [
              Container(
                color: Colors.red[600],
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      backgroundImage: AssetImage('assets/man2.png'),
                      radius: 45,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Junior Magana',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
                
              ),
              //SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    _textInput('example@example.com', Icons.email, Icons.edit),
                    SizedBox(height: 10),
                    _textInput('534 - 343 - 4343', Icons.phone, Icons.edit),
                    SizedBox(height: 10),
                    _textInput('Ring Road latif abad pehsawar', Icons.location_on,
                        Icons.edit),
                  ],
                ),
              ),
              SizedBox(height: 30),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BuyerMoreScreen(),
                    ),
                  );
                },
                padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                textColor: Colors.white,
                color: Colors.red[600],
                child: Text(
                  'Updade',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

Widget _textInput(String hint, IconData icon, IconData icon2) {
  return Container(
    height: 60,
    margin: EdgeInsets.only(top: 10),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.red[600])),
    ),
    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
    child: ListTile(
      //controller: controller,
      leading: Icon(
        icon,
        color: Colors.red[600],
      ),
      title: Text(
        hint,
        style: TextStyle(color: Colors.red[600]),
      ),
      trailing: Icon(
        icon2,
        color: Colors.red[600],
      ),
    ),
  );
}
