import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:kickstarter/screens/buyer/buyer_cart.dart';
import 'package:kickstarter/screens/buyer/buyer_chat.dart';
import 'package:kickstarter/screens/buyer/buyer_home.dart';
import 'package:kickstarter/screens/buyer/buyer_morescreen.dart';
import 'package:kickstarter/screens/buyer/buyer_search.dart';

class BuyerNavigationBar extends StatefulWidget {
  @override
  _BuyerNavigationBarState createState() => _BuyerNavigationBarState();
}

class _BuyerNavigationBarState extends State<BuyerNavigationBar> {
  //navbar
  int pageIndex = 0;
  bool animate = true;
  BuyerHome _home;
  BuyerSearch _search;
  BuyerChat _chat;
  BuyerCart _cart;
  BuyerMoreScreen _moreScreen;

  Widget _showPage;
  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _home;

      case 1:
        return _search;

      case 2:
        return _chat;

      case 3:
        return _cart;

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
    _home = BuyerHome();
    _search = BuyerSearch();
    _chat = BuyerChat();
    _cart = BuyerCart();
    _moreScreen = BuyerMoreScreen();

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
            Icons.shopping_cart,
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
        buttonBackgroundColor: Colors.red,
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
