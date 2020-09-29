import 'package:flutter/material.dart';
import 'package:kickstarter/screens/buyer/rate_order.dart';

class BuyerCart extends StatefulWidget {
  @override
  _BuyerCartState createState() => _BuyerCartState();
}

class _BuyerCartState extends State<BuyerCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[600],
      appBar: AppBar(
        //iconTheme: IconThemeData(color: Colors.black),
        title: Text('Order Cart'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.red[700],
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
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
                      Image(
                        image: AssetImage('assets/boot3.png'),
                        width: 100,
                        height: 100,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Running Shoes',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Size 40  Color Red',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            '\$35',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            Divider(
              color: Colors.white,
              thickness: 1,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Cost',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  'US \$5',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  'US \$45',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 80),
            RaisedButton(
                textColor: Colors.red,
                color: Colors.white,
                child: Text('Confirm',style: TextStyle( fontSize: 18),),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RateOrder(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
