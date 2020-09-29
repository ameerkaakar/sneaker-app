import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:kickstarter/screens/seller/seller_nav.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
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
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Add Product',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 30, right: 30),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
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
                    Container(
                      width: 70,
                      height: 70,
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
                                  Icons.video_call,
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
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Add Picture'),
                    Text('Add Video'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            _input('Name', 'Product Name'),
            SizedBox(height: 20),
            _input('Cataegory', 'Shoes'),
            SizedBox(height: 20),
            _input('Price', '\$00'),
            SizedBox(height: 20),
            _input('Color', 'Black'),
            SizedBox(height: 20),
            _input('Number', '8'),
            SizedBox(height: 20),
            Container(
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
                  minLines: 2,
                  maxLines: null,
                  decoration: InputDecoration(
                      labelStyle:
                          TextStyle(color: Colors.grey[600], fontSize: 18),
                      labelText: 'Description',
                      hintText: 'Type...',
                      focusColor: Colors.red[600],
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
                ),
              ),
            ),
            SizedBox(height: 30),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SellerNavigationBar(),
                  ),
                );
              },
              padding: EdgeInsets.fromLTRB(100, 5, 100, 5),
              textColor: Colors.white,
              color: Colors.red[600],
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SellerNavigationBar(),
                  ),
                );
              },
              padding: EdgeInsets.fromLTRB(100, 5, 100, 5),
              textColor: Colors.white,
              color: Colors.red[600],
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

Widget _input(
  String label,
  String hint,
) {
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
            // prefixIcon: Icon(
            //   icon,
            //   color: Colors.red[600],
            // ),
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
