import 'package:flutter/material.dart';
import 'package:kickstarter/screens/buyer/buyer_product_detail.dart';

class BuyerHome extends StatefulWidget {
  @override
  _BuyerHomeState createState() => _BuyerHomeState();
}

class _BuyerHomeState extends State<BuyerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hey Jhon!',
                      style: TextStyle(color: Colors.red[800]),
                    ),
                    Text('Welcome to Kickstarter')
                  ],
                ),
                CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/man.png'),
                    backgroundColor: Colors.white),
              ],
            ),
            SizedBox(height: 20),
            _input('Search', Icons.search),
            SizedBox(height: 40),
            Text(
              'Featured',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Boots',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.red[200],
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(width: 30),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Shoes',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.red[600],
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(width: 30),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Sneakers',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.red[200],
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => BuyerProductDetail(),),);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.red[600],
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
                      Image(
                        image: AssetImage('assets/boot3.png'),
                        width: 110,
                        height: 110,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Nike Air Max',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'US \$25',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton.icon(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.red,
                            ),
                            label: Text(
                              'Add to Cart',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          SizedBox(width: 10),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 33,
                              height: 33,
                              decoration: BoxDecoration(
                                color: Colors.red[600],
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _input(String label, IconData icon) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 5))
        ]),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: TextFormField(
        decoration: InputDecoration(
            labelStyle: TextStyle(
              color: Colors.grey[400],
            ),
            hintText: label,
            focusColor: Colors.grey[400],
            prefixIcon: Icon(
              icon,
              color: Colors.grey[500],
            ),
            //fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            fillColor: Colors.green),
        //keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    ),
  );
}
