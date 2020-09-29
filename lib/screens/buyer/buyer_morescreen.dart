import 'package:flutter/material.dart';
import 'package:kickstarter/cosntant.dart';

class BuyerMoreScreen extends StatefulWidget {
  @override
  _BuyerMoreScreenState createState() => _BuyerMoreScreenState();
}

class _BuyerMoreScreenState extends State<BuyerMoreScreen> {
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
                      _data(Icons.store_mall_directory, 'profile', BUYER_PROFILE, context,),
                      _data(Icons.payment, 'Transaction',BUYER_TRANSACTION, context),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _data(Icons.favorite_border, 'Favorites', FAVORITE, context),
                      _data(Icons.view_carousel, 'Track Delivery', BUYER_TRACK_DELIVERY, context),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _data(Icons.ondemand_video, 'Unboxing Video', UNBOX_VIDEOS, context),
                      _data(Icons.settings_applications, 'Setting', BUYER_SETTING, context),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _data(Icons.notifications_none, 'Notification', BUYER_NOTIFICATION, context),
                      _data(Icons.info_outline, 'About', ABOUT_US, context),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _data(Icons.phone_in_talk, 'Contact', BUYER_CONTACT, context),
                      _data(Icons.settings_backup_restore, 'Log Out', BUYER_LOGIN, context),
                    ],
                  ),
                ],
              ),
            ),);
  }
}

Widget _data(IconData icon, String title, String routeName, BuildContext context) {
  return InkWell(
    onTap: () {Navigator.pushNamed(context, routeName);},
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
