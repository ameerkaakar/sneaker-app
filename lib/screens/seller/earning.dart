import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:kickstarter/screens/seller/cancelled_order.dart';
import 'package:kickstarter/screens/seller/cleared.dart';
import 'package:kickstarter/screens/seller/pendingoders.dart';
import 'package:kickstarter/screens/seller/withdraw_orders.dart';

class Earning extends StatefulWidget {
  @override
  _EarningState createState() => _EarningState();
}

class _EarningState extends State<Earning> {
  //graph
  var data = [
    0.1,
    14.0,
    0.5,
    10.0,
    0.5,
    14.3,
    3.0,
    11.0,
    0.0,
    20.0,
  ];
  //int _stackIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            centerTitle: true,
            title: Text(
              'Earning',
              style: TextStyle(color: Colors.red),
            ),
            backgroundColor: Colors.white,
            bottom: TabBar(
              unselectedLabelColor: Colors.grey[400],
              labelColor: Colors.red,
              tabs: [
                Tab(
                  text: 'Earning',
                ),
                Tab(text: 'Graph'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    Container(
                      //margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.red[600],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Personal Balance',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        //fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Text(
                                      'Earning in May',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        //fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      '\$4',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      '\$4',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Avg selling price',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        //fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Text(
                                      'Active appointments',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        //fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      '\$45',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      '\$643',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Pending clearance',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        //fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Text(
                                      'Cancelled appointments',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        //fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      '\$44',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      '\$75',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),
                          ListTile(
                            title: Text('Cancelled orders'),
                            subtitle: Text('\$0'),
                            trailing: Icon(Icons.navigate_next),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CancelledOrders(),
                                ),
                              );
                            },
                          ),
                          ListTile(
                            title: Text('Pending Clearance'),
                            subtitle: Text('\$0'),
                            trailing: Icon(Icons.navigate_next),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PendingClearance(),
                                ),
                              );
                            },
                          ),
                          ListTile(
                            title: Text('Withdraw'),
                            subtitle: Text('\$543'),
                            trailing: Icon(Icons.navigate_next),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WithdrawOrders(),
                                ),
                              );
                            },
                          ),
                          ListTile(
                            title: Text('Cleared'),
                            subtitle: Text('\$0'),
                            trailing: Icon(Icons.navigate_next),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Cleared(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Sparkline(
                            data: data,
                            pointsMode: PointsMode.all,
                            pointSize: 6.0,
                            pointColor: Colors.amber,
                            lineWidth: 3.0,
                            lineGradient: new LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.red[900], Colors.red[300]],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
