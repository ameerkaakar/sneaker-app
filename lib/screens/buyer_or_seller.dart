import 'package:flutter/material.dart';
import 'package:kickstarter/screens/buyer/buyer_login.dart';
import 'package:kickstarter/screens/seller/seller_login.dart';

class BuyerOrSeller extends StatefulWidget {
  BuyerOrSeller({Key key}) : super(key: key);

  @override
  _BuyerOrSellerState createState() => _BuyerOrSellerState();
}

class _BuyerOrSellerState extends State<BuyerOrSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            width: 1218.0,
            height: 913.0,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/buyer.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(30.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 110,
                      height: 110,
                      child: Image(
                        image: AssetImage('assets/logo.png'),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                    ),
                    Column(
                      children: [
                        RaisedButton(
                          padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.white,
                          textColor: Colors.red[600],
                          child: Text("Seller",
                              style: TextStyle(
                                fontSize: 18.0,
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SellerLogin()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RaisedButton(
                          padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.white,
                          textColor: Colors.red[600],
                          child: Text("Buyer",
                              style: TextStyle(
                                fontSize: 18.0,
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BuyerLogin()));
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
