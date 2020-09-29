import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:kickstarter/screens/buyer/buyer_login.dart';

class BuyerSignup extends StatefulWidget {
  @override
  _BuyerSignupState createState() => _BuyerSignupState();
}

class _BuyerSignupState extends State<BuyerSignup> {

  //image picker
  File _image;
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Signup',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.red[600],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(60.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 10,
                                offset: Offset(0, 5))
                          ]),
                      child: InkWell(
                        child: CircleAvatar(
                          child: _image == null
                              ? Icon(
                                  Icons.camera_alt,
                                  size: 30,
                                  color: Colors.grey,
                                )
                              : Image.file(_image),
                          radius: 60,
                          backgroundColor: Colors.white,
                        ),
                        onTap: getImage,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    _input('Shop', 'Shop Name', Icons.shop),
                    SizedBox(
                      height: 20,
                    ),
                    _input('Email', 'Email', Icons.mail),
                    SizedBox(
                      height: 20,
                    ),
                    _input('Phone', 'Phone', Icons.phone),
                    SizedBox(
                      height: 20,
                    ),
                    _input('Address', 'Address', Icons.location_on),
                    SizedBox(
                      height: 20,
                    ),
                    _input('Password', 'Password', Icons.vpn_key),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BuyerLogin(),
                      ),
                    );
                  },
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  textColor: Colors.white,
                  color: Colors.red[600],
                  child: Text(
                    'Signup',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Already have an account? ",
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
                                builder: (context) => BuyerLogin()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.red[600])),
                        ),
                        child: Text(
                          "Login",
                          style:
                              TextStyle(color: Colors.red[600], fontSize: 16),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )));
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
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
