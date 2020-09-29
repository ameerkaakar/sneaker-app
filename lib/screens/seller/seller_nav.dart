import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:kickstarter/screens/seller/Products.dart';
import 'package:kickstarter/screens/seller/order.dart';
import 'package:kickstarter/screens/seller/seller_chat.dart';
import 'package:kickstarter/screens/seller/seller_home.dart';
import 'package:kickstarter/screens/seller/seller_more.dart';

class SellerNavigationBar extends StatefulWidget {
  @override
  _SellerNavigationBarState createState() => _SellerNavigationBarState();
}

class _SellerNavigationBarState extends State<SellerNavigationBar> {
  //navbar
  int pageIndex = 0;
  bool animate = true;
  SellerHome _home;
  Products _products;
  SellerChat _chat;
  Order _order;
  SellerMoreScreen _moreScreen;

  Widget _showPage;
  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _home;

      case 1:
        return _products;

      case 2:
        return _chat;

      case 3:
        return _order;

      case 4:
        return _moreScreen;
      default:
        return new Container(
            child: new Center(
          child: new Text(
            'No Page found by page thrower',
            style: new TextStyle(fontSize: 30),
          ),
        ));
    }
  }

  @override
  void initState() {
    super.initState();
    _home = SellerHome();
    _products = Products();
    _chat = SellerChat();
    _order = Order();
    _moreScreen = SellerMoreScreen();

    pageIndex = 0;
    _showPage = _pageChooser(pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: pageIndex,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 18,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            size: 18,
            color: Colors.white,
          ),
          Icon(
            Icons.chat_bubble,
            size: 18,
            color: Colors.white,
          ),
          Icon(
            Icons.add_shopping_cart,
            size: 18,
            color: Colors.white,
          ),
          Icon(
            Icons.more_horiz,
            size: 18,
            color: Colors.white,
          ),
        ],
        color: Colors.red[600],
        height: 45,
        buttonBackgroundColor: Colors.red[600],
        backgroundColor: Colors.white,
        animationCurve: Curves.linear,
        animationDuration: Duration(milliseconds: 300),
        onTap: (int tappedIndex) {
          setState(() {
            animate = true;
            pageIndex = tappedIndex;
            _showPage = _pageChooser(tappedIndex);
          });
        },
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: _showPage,
        ),
      ),
    );
  }
}