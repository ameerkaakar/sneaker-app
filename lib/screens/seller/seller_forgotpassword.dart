import 'package:flutter/material.dart';
import 'package:kickstarter/screens/seller/seller_verification.dart';

class SellerForgotPassword extends StatefulWidget {
  @override
  _SellerForgotPasswordState createState() => _SellerForgotPasswordState();
}

class _SellerForgotPasswordState extends State<SellerForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Forgot Password',
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
                  height: 30,
                ),
                Text(
                  'Recover Account',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We will send a temporary password via email to reset password in app',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                _input('Email', 'Email', Icons.mail),
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
                        builder: (context) => SellerVerification(),
                      ),
                    );
                  },
                  padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                  textColor: Colors.white,
                  color: Colors.red[600],
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Received code? ",
                      //style: TextStyle(color: Colors.black)
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SellerVerification()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.red[600])),
                        ),
                        child: Text(
                          "Enter here",
                          style:
                              TextStyle(color: Colors.red[600], fontSize: 16),
                        ),
                      ),
                    )
                  ],
                )
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
