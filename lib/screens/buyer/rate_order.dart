import 'package:flutter/material.dart';
import 'package:kickstarter/screens/buyer/buyer_nav.dart';

class RateOrder extends StatefulWidget {
  @override
  _RateOrderState createState() => _RateOrderState();
}

class _RateOrderState extends State<RateOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[600],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Rate your order',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        backgroundColor: Colors.red[600],
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: ListView(
          children: [
            SizedBox(height: 50),
            Column(
              children: [
                Text(
                  '\$35.00',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                SizedBox(height: 20),
                Text(
                  'Order Total (\$35)',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.red[800],
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
                      //SizedBox(height: 10),
                      Image(
                        image: AssetImage('assets/boot3.png'),
                        width: 110,
                        height: 110,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, size: 35, color: Colors.yellow),
                          Icon(Icons.star, size: 35, color: Colors.yellow),
                          Icon(Icons.star, size: 35, color: Colors.yellow),
                          Icon(Icons.star, size: 35, color: Colors.yellow),
                          Icon(Icons.star, size: 35, color: Colors.grey),
                        ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          // disabledBorder: InputBorder.none,
                          // enabledBorder: InputBorder.none,
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 18),
                          labelText: 'Type Comment',
                          //hintStyle: TextStyle(color: Colors.white),
                          focusColor: Colors.red[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 80),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BuyerNavigationBar(),
                  ),
                );
              },
              padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
              textColor: Colors.red[600],
              color: Colors.white,
              child: Text(
                'Pay',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
