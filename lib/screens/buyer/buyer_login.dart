import 'package:flutter/material.dart';
import 'package:kickstarter/screens/buyer/buyer_addcard.dart';
import 'package:kickstarter/screens/buyer/buyer_forgotpassword.dart';
import 'package:kickstarter/screens/buyer/buyer_signup.dart';

class BuyerLogin extends StatefulWidget {
  @override
  _BuyerLoginState createState() => _BuyerLoginState();
}

class _BuyerLoginState extends State<BuyerLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 110,
                  height: 110,
                  child: Image(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.red[600],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                _input('Email', 'Email', Icons.mail),
                SizedBox(
                  height: 20,
                ),
                _input('Password', 'Password', Icons.vpn_key),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => BuyerForgotPassword(),),);
                  },
                  child: Text(
                    "Forgot Password?",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BuyerAddCard(),
                      ),
                    );
                  },
                  padding: EdgeInsets.fromLTRB(100, 5, 100, 5),
                  textColor: Colors.white,
                  color: Colors.red[600],
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don\'t have account ? ",
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
                                builder: (context) => BuyerSignup(),),);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.red[600])),
                        ),
                        child: Text(
                          "Signup",
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
          labelStyle: TextStyle(color: Colors.grey[600],fontSize: 18),
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
