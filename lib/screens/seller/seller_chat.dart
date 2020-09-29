import 'package:flutter/material.dart';
import 'package:kickstarter/screens/seller/seller_inbox.dart';

class SellerChat extends StatefulWidget {
  @override
  _SellerChatState createState() => _SellerChatState();
}

class _SellerChatState extends State<SellerChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Chat',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 5, top: 20, right: 5),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Text('Messages', style: TextStyle(fontSize: 20,),
            textAlign: TextAlign.center,),
            SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: Colors.grey
                ),
              ),
              child: ListTile(
                onTap: (){
                  Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => SellerInbox(),),);
                },
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/man.png'),
                  radius: 20,
                ),
                title: Text('Junior Magana'),
                subtitle: Text('Hello how are you'),
                trailing: Text('6 mon, 6:23 pm', style: TextStyle(color: Colors.grey, fontSize: 12),),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: Colors.grey
                ),
              ),
              child: ListTile(
                onTap: (){
                  Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => SellerInbox(),),);
                },
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/man2.png'),
                  radius: 20,
                ),
                title: Text('Jhon Snow'),
                subtitle: Text('Hello how are you'),
                trailing: Text('6 mon, 6:23 pm', style: TextStyle(color: Colors.grey, fontSize: 12),),
              ),
            ),
          ],
        ),
      ),
     );
   }
 }