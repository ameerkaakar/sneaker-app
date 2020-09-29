import 'package:flutter/material.dart';

class BuyerTransaction extends StatefulWidget {
  @override
  _BuyerTransactionState createState() => _BuyerTransactionState();
}

class _BuyerTransactionState extends State<BuyerTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Transaction',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 30, top: 20, right: 30),
        child: ListView(
          children: [
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.red[600],
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '      Date',
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '       Shop',
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Amount',
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  _info('10-06-2020', 'Nike Shoes', '\$25'),
                  SizedBox(height: 10),
                  Divider(color: Colors.white,),
                  SizedBox(height: 10),
                  _info('10-06-2020', 'Nike Shoes', '\$25'),
                  SizedBox(height: 10),
                  Divider(color: Colors.white,),
                  SizedBox(height: 10),
                  _info('10-06-2020', 'Nike Shoes', '\$25'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _info(String date, String shop, String amount) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text(
        date,
        style: TextStyle(color: Colors.white),
      ),
      Text(
        shop,
        style: TextStyle(color: Colors.white),
      ),
      Text(
        amount,
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}
