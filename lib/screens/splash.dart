import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kickstarter/screens/slide_screens/slide_screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 3000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => IntroScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xffda1212),
      body: Stack(
        children: <Widget>[
          Container(
            width: 1218.0,
            height: 913.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/splash_image'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
