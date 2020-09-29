import 'package:flutter/material.dart';

class SellerHome extends StatefulWidget {
  @override
  _SellerHomeState createState() => _SellerHomeState();
}

class _SellerHomeState extends State<SellerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.red[600],
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              color: Colors.red[600],
              child: Column(
                children: [
                  SizedBox(height: 20),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/boot2.png'),
                      radius: 45,
                      backgroundColor: Colors.red[600],
                    ),
                    title: Text(
                      'eStore',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text(
                      'Ladies & Gents',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                padding:
                    EdgeInsets.only(left: 10, right: 20, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.red[600],
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
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
                          'Total Orders',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        Text(
                          'Earn Today',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '10',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                        Text(
                          '\$345',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Orders Queue',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        Text(
                          'In Progress',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '3',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                        Text(
                          '5',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Earnings',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Personal Balance',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          '\$50',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Text(
                          'Avg. selling price',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          '\$18',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pending clearance',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          '\$180',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Earning in May',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          '\$150',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Active orders',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          '2(\$180)',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cancelled orders',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          '2(\$180)',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                   
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
