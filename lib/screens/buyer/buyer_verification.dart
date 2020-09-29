import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:kickstarter/screens/buyer/buyer_resetpassword.dart';

class BuyerVerification extends StatefulWidget {
  @override
  _BuyerVerificationState createState() => _BuyerVerificationState();
}

class _BuyerVerificationState extends State<BuyerVerification> {

  //pin code
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.red[600]),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
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
                  height: 50,
                ),
                Image(
                  image: AssetImage('assets/verification.png'),
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Enter Your Email Verification Code',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.all(30.0),
                  padding: const EdgeInsets.all(30.0),
                  child: PinPut(
                    fieldsCount: 4,
                    onSubmit: (String pin) => _showSnackBar(pin, context),
                    focusNode: _pinPutFocusNode,
                    controller: _pinPutController,
                    submittedFieldDecoration: _pinPutDecoration.copyWith(
                        borderRadius: BorderRadius.circular(
                          5.0,
                        ),
                        border: Border.all(color: Colors.red[600])),
                    selectedFieldDecoration: _pinPutDecoration,
                    followingFieldDecoration: _pinPutDecoration.copyWith(
                      borderRadius: BorderRadius.circular(2.0),
                      border: Border.all(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  child: Icon(
                    Icons.arrow_forward,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BuyerResetPassword(),
                      ),
                    );
                  },
                  backgroundColor: Colors.red[600],
                ),
                SizedBox(height: 30,),
                InkWell(
                  child: Text('Resend code',
                  style: TextStyle(color: Colors.red[800],fontSize: 18),),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BuyerResetPassword(),
                      ),
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(String pin, BuildContext context) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 3),
      content: Container(
        color: Colors.red,
        height: 50.0,
        width: 50.0,
        child: Center(
          child: Text(
            'Pin Submitted. Value: $pin',
            //style: const TextStyle(fontSize: 40.0),
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
