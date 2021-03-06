import 'package:flutter/material.dart';
import 'package:kickstarter/screens/seller/add_product.dart';

class SellerAddCard extends StatefulWidget {
  @override
  _SellerAddCardState createState() => _SellerAddCardState();
}

class _SellerAddCardState extends State<SellerAddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xffffffff),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            SizedBox(height: 30),
            Image(image: AssetImage('assets/paypal.png'), width: 70, height: 70,),
            SizedBox(height: 30),
            Text(
              'Card Number',
              style: TextStyle(color: Colors.red, fontSize: 14),
            ),
            SizedBox(height: 20),
            Text(
              '1234    5676     7676     7756',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 5),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Expire Date',
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '1234    /     7756',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'CVV',
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '1234 ',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            SizedBox(height: 40),
            Text(
              'Card Number',
              style: TextStyle(color: Colors.red, fontSize: 14),
            ),
            SizedBox(height: 20),
            Text(
              'Jhon Doe',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 3),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            SizedBox(height: 40),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddProduct(),
                  ),
                );
              },
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              textColor: Colors.white,
              color: Colors.red[600],
              child: Text(
                'ADD',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddProduct()));
              },
              child: Container(
                decoration: BoxDecoration(),
                child: Text(
                  "Add Later",
                  style: TextStyle(color: Colors.red[600], fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
