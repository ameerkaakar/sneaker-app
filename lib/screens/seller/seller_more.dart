import 'package:flutter/material.dart';
import 'package:kickstarter/cosntant.dart';

class SellerMoreScreen extends StatefulWidget {
  @override
  _SellerMoreScreenState createState() => _SellerMoreScreenState();
}

class _SellerMoreScreenState extends State<SellerMoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[600],
        appBar: AppBar(
          //iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'More',
            
          ),
          elevation: 0,
          backgroundColor: Colors.red[600],
          centerTitle: true,
        ),
        body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: ListView(
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _data(Icons.store_mall_directory, 'profile', SELLER_PROFILE,context,
                      ),
                      _data(Icons.payment, 'Earnings', EARNING,context),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _data(Icons.settings_applications, 'Setting', SELLER_SETTING, context),
                      _data(Icons.notifications_none, 'Notification', SELLER_NOTIFICATION, context),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _data(Icons.info_outline, 'About', ABOUT_US, context),
                      _data(Icons.phone_in_talk, 'Contact', SELLER_CONTACT,
                          context),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _data(Icons.settings_backup_restore, 'Log Out',SELLER_LOGIN, context),
                    ],
                  ),
                ],
              ),
            ),);
  }
}

Widget _data(
    IconData icon, String title, String routeName, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, routeName);
    },
    child: Container(
      width: 130,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Icon(
            icon,
            size: 35,
            color: Colors.red,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              //color: Colors.grey[600],
              fontSize: 13,
            ),
          ),
        ],
      ),
    ),
  );
}
