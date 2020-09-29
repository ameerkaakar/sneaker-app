import 'package:flutter/material.dart';

class SellerappBuyerprofile extends StatefulWidget {
  @override
  _SellerappBuyerprofileState createState() => _SellerappBuyerprofileState();
}

class _SellerappBuyerprofileState extends State<SellerappBuyerprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Buyer Profile',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        backgroundColor: Colors.red[600],
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        //padding: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.red[600],
              child: Column(
                children: [
                  SizedBox(height: 30),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('assets/man2.png'),
                    radius: 45,
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Junior Magana',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 15,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '+00943564465',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.mail,
                        color: Colors.white,
                        size: 15,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'example@example.com',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            '6',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Total Orders',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '\$400',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Total amount paid',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30,),
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      onPressed: () {},
                      //padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                      textColor: Colors.white,
                      color: Colors.red[600],
                      child: Text(
                        'Today',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Text(
                        'Upcoming',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Text(
                        'History',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
