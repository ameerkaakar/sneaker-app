import 'package:flutter/material.dart';
import 'package:kickstarter/screens/seller/seller_login.dart';

class SellerResetPassword extends StatefulWidget {
  @override
  _SellerResetPasswordState createState() => _SellerResetPasswordState();
}

class _SellerResetPasswordState extends State<SellerResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Reset Password',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image(
                  image: AssetImage('assets/password.png'),
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  height: 80,
                ),
                
                _input('Temperory Password', 'Enter Temperory Password', Icons.lock_open),
                SizedBox(
                  height: 10,
                ),
                _input('New Password', 'Enter New Password', Icons.lock_open),
                SizedBox(
                  height: 10,
                ),
                _input('Confirm Password', 'Confirm Password', Icons.lock_open),
                SizedBox(
                  height: 50,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SellerLogin(),
                      ),
                    );
                  },
                  padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                  textColor: Colors.white,
                  color: Colors.red[600],
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _input(String label, String hint, IconData icon) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        boxShadow: [
          // BoxShadow(
          //     color: Colors.grey.withOpacity(0.3),
          //     blurRadius: 10,
          //     offset: Offset(0, 5))
        ]),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: TextFormField(
        decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.grey[600], fontSize: 18),
            labelText: label,
            hintText: hint,
            focusColor: Colors.red[600],
            prefixIcon: Icon(
              icon,
              color: Colors.red[600],
            ),
            //fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(color: Colors.red[600]),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.red[600],
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
