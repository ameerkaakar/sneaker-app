import 'package:flutter/material.dart';

class WithdrawOrders extends StatefulWidget {
  @override
  _WithdrawOrdersState createState() => _WithdrawOrdersState();
}

class _WithdrawOrdersState extends State<WithdrawOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Withdraw',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            SizedBox(height: 40,),
            ListTile(
                title: Text('Withdraw Completed Succesfully'),
                subtitle: Text('May 4, 2020'),
                trailing: Text('\$543',
                style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text('Withdraw Completed'),
                subtitle: Text('May 2, 2020'),
                trailing: Text('\$543',
                style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text('Withdraw Iniated'),
                subtitle: Text('May 4, 2020'),
                trailing: Text('\$543',
                style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text('Withdraw Completed'),
                subtitle: Text('May 2, 2020'),
                trailing: Text('\$543',
                style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                onTap: () {},
              ),
          ],
        )
      ),
    );
  }
}