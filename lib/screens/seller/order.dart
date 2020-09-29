import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            centerTitle: true,
            title: Text(
              'Orders',
              style: TextStyle(color: Colors.red),
            ),
            backgroundColor: Colors.white,
            bottom: TabBar(
              unselectedLabelColor: Colors.grey[400],
              labelColor: Colors.red,
              labelPadding: EdgeInsets.all(0),
              tabs: [
                Tab(text: 'Today',),
                Tab(text: 'Upcoming'),
                Tab(text: 'Canceled',),
                Tab(text: 'History'),
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
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //border: Border.all(color: Colors.red[200]),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(
                                image: AssetImage('assets/boot3.png'),
                                width: 60,
                                height: 60,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nike Dunk                       ',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Red',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'shoes Number: 38',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '\$20',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Today',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    'Street 32V, New York',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '08 May, 2020',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.format_list_numbered,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '1 Peace',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //border: Border.all(color: Colors.red[200]),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(
                                image: AssetImage('assets/boot.png'),
                                width: 60,
                                height: 60,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Adidas yeezy     ',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Blue',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'shoes Number: 38',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '\$20',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    '1 day remaining',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  SizedBox(height: 7),
                                  Container(
                                    padding: EdgeInsets.only(left: 5, right: 5,bottom: 3, top: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      'queue',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    'Street 32V, New York',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '08 May, 2020',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.format_list_numbered,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '1 Peace',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //border: Border.all(color: Colors.red[200]),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(
                                image: AssetImage('assets/boot2.png'),
                                width: 60,
                                height: 60,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Adidas yeezy     ',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Blue',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'shoes Number: 38',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '\$30',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    '1 day remaining',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  SizedBox(height: 7),
                                  Container(
                                    padding: EdgeInsets.only(left: 5, right: 5,bottom: 3, top: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.orange[400],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    'Street 32V, New York',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '08 May, 2020',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.format_list_numbered,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '1 Peace',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //border: Border.all(color: Colors.red[200]),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(
                                image: AssetImage('assets/boot.png'),
                                width: 60,
                                height: 60,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nike Air Max          ',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Blue',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'shoes Number: 38',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '\$20',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    '1 day remaining',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  SizedBox(height: 7),
                                  Container(
                                    padding: EdgeInsets.only(left: 5, right: 5,bottom: 3, top: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      'queue',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    'Street 32V, New York',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '08 May, 2020',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.format_list_numbered,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '1 Peace',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //border: Border.all(color: Colors.red[200]),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(
                                image: AssetImage('assets/boot2.png'),
                                width: 60,
                                height: 60,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Adidas yeezy     ',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Blue',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'shoes Number: 38',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '\$30',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    '1 day remaining',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  SizedBox(height: 7),
                                  Container(
                                    padding: EdgeInsets.only(left: 5, right: 5,bottom: 3, top: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.orange[400],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    'Street 32V, New York',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '08 May, 2020',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.format_list_numbered,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '1 Peace',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //border: Border.all(color: Colors.red[200]),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(
                                image: AssetImage('assets/boot3.png'),
                                width: 60,
                                height: 60,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nike Dunk             ',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Blue',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'shoes Number: 38',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '\$30',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    '1 day remaining',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  SizedBox(height: 7),
                                  Container(
                                    padding: EdgeInsets.only(left: 5, right: 5,bottom: 3, top: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.green[400],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      'paid',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    'Street 32V, New York',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '08 May, 2020',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.format_list_numbered,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '1 Peace',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
