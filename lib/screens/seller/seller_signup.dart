import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:kickstarter/screens/seller/seller_login.dart';

class SellerSignup extends StatefulWidget {
  @override
  _SellerSignupState createState() => _SellerSignupState();
}

class _SellerSignupState extends State<SellerSignup> {
  //time picker
  TimeOfDay _time;
  _picktime() async {
    TimeOfDay time = await showTimePicker(
        context: context,
        initialTime: _time,
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData(),
            child: child,
          );
        });
    if (time != null) {
      setState(() {
        _time = time;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _time = TimeOfDay.now();
  }

  //image picker
  File _image;
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  //radio button
  String _verticalGroupValue = "Pending";
  List<String> _status = ["Male", "Female", "Both"];

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
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Open Time',
                          style: TextStyle(
                              color: Colors.red[900],
                              fontWeight: FontWeight.w500),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: Colors.white,
                          onPressed: _picktime,
                          child: Text('${_time.format(context)}'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Close Time',
                          style: TextStyle(
                              color: Colors.red[900],
                              fontWeight: FontWeight.w500),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: Colors.white,
                          onPressed: _picktime,
                          child: Text('${_time.format(context)}'),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      'Gender',
                      style: TextStyle(
                        color: Colors.red[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RadioGroup<String>.builder(
                          direction: Axis.horizontal,
                          groupValue: _verticalGroupValue,
                          onChanged: (value) => setState(() {
                            _verticalGroupValue = value;
                          }),
                          items: _status,
                          itemBuilder: (item) => RadioButtonBuilder(
                            item,
                          ),
                        ),
                      ],
                    ),
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
                        builder: (context) => SellerLogin(),
                      ),
                    );
                  },
                  padding: EdgeInsets.fromLTRB(100, 5, 100, 5),
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
                                builder: (context) => SellerLogin(),),);
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
