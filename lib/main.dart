import 'package:flutter/material.dart';
import 'package:kickstarter/cosntant.dart';
import 'package:kickstarter/screens/AboutUs.dart';
import 'package:kickstarter/screens/buyer/Buyer_searcheditems.dart';
import 'package:kickstarter/screens/buyer/buyer_addcard.dart';
import 'package:kickstarter/screens/buyer/buyer_cart.dart';
import 'package:kickstarter/screens/buyer/buyer_chat.dart';
import 'package:kickstarter/screens/buyer/buyer_contact.dart';
import 'package:kickstarter/screens/buyer/buyer_forgotpassword.dart';
import 'package:kickstarter/screens/buyer/buyer_home.dart';
import 'package:kickstarter/screens/buyer/buyer_inbox.dart';
import 'package:kickstarter/screens/buyer/buyer_login.dart';
import 'package:kickstarter/screens/buyer/buyer_map.dart';
import 'package:kickstarter/screens/buyer/buyer_morescreen.dart';
import 'package:kickstarter/screens/buyer/buyer_nav.dart';
import 'package:kickstarter/screens/buyer/buyer_notification.dart';
import 'package:kickstarter/screens/buyer/buyer_product_detail.dart';
import 'package:kickstarter/screens/buyer/buyer_profile.dart';
import 'package:kickstarter/screens/buyer/buyer_resetpassword.dart';
import 'package:kickstarter/screens/buyer/buyer_setting.dart';
import 'package:kickstarter/screens/buyer/buyer_signup.dart';
import 'package:kickstarter/screens/buyer/buyer_transaction.dart';
import 'package:kickstarter/screens/buyer/buyer_verification.dart';
import 'package:kickstarter/screens/buyer/buyer_search.dart';
import 'package:kickstarter/screens/buyer/favorite.dart';
import 'package:kickstarter/screens/buyer/rate_order.dart';
import 'package:kickstarter/screens/buyer/unbox_videos.dart';
import 'package:kickstarter/screens/buyer_or_seller.dart';
import 'package:kickstarter/screens/seller/Products.dart';
import 'package:kickstarter/screens/seller/cancelled_order.dart';
import 'package:kickstarter/screens/seller/cleared.dart';
import 'package:kickstarter/screens/seller/earning.dart';
import 'package:kickstarter/screens/seller/order.dart';
import 'package:kickstarter/screens/seller/pendingoders.dart';
import 'package:kickstarter/screens/seller/seller_addcard.dart';
import 'package:kickstarter/screens/seller/seller_chat.dart';
import 'package:kickstarter/screens/seller/seller_contact.dart';
import 'package:kickstarter/screens/seller/seller_forgotpassword.dart';
import 'package:kickstarter/screens/seller/seller_home.dart';
import 'package:kickstarter/screens/seller/seller_login.dart';
import 'package:kickstarter/screens/seller/seller_more.dart';
import 'package:kickstarter/screens/seller/seller_nav.dart';
import 'package:kickstarter/screens/seller/seller_notification.dart';
import 'package:kickstarter/screens/seller/seller_productdetail.dart';
import 'package:kickstarter/screens/seller/seller_profile.dart';
import 'package:kickstarter/screens/seller/seller_resetpassword.dart';
import 'package:kickstarter/screens/seller/seller_setting.dart';
import 'package:kickstarter/screens/seller/seller_signup.dart';
import 'package:kickstarter/screens/seller/seller_verification.dart';
import 'package:kickstarter/screens/seller/sellerapp_buyerprofile.dart';
import 'package:kickstarter/screens/seller/withdraw_orders.dart';
import 'package:kickstarter/screens/slide_screens/slide_screen.dart';
import 'package:kickstarter/screens/splash.dart';


void main() => runApp(GymApp());

class GymApp extends StatelessWidget {
  const GymApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'main page',
      routes: <String, WidgetBuilder>{
        SPLASH_PAGE: (BuildContext context) => Splash(),
        SLIDE_SCREEN: (BuildContext context) => IntroScreen(),
        BUYER_OR_SELLER: (BuildContext context) => BuyerOrSeller(),
        BUYER_LOGIN: (BuildContext context) => BuyerLogin(),
        SELLER_LOGIN: (BuildContext context) => SellerLogin(),
        BUYER_SIGNUP: (BuildContext context) => BuyerSignup(),
        SELLER_SIGNUP: (BuildContext context) => SellerSignup(),
        BUYER_FORGOTPASSWORD: (BuildContext context) => BuyerForgotPassword(),
        SELLER_FORGOTPASSWORD: (BuildContext context) => SellerForgotPassword(),
        BUYER_VERIFICATION: (BuildContext context) => BuyerVerification(),
        SELLER_VERIFICATION: (BuildContext context) => SellerVerification(),
        BUYER_RESETPASSWORD: (BuildContext context) => BuyerResetPassword(),
        SELLER_RESETPASSWORD: (BuildContext context) => SellerResetPassword(),
        BUYER_ADD_CARD: (BuildContext context) => BuyerAddCard(),
        BUYER_HOME: (BuildContext context) => BuyerHome(),
        BUYER_SEARCH: (BuildContext context) => BuyerSearch(),
        BUYER_CHAT: (BuildContext context) => BuyerChat(),
        CART: (BuildContext context) => BuyerCart(),
        BUYER_MORESCREEN: (BuildContext context) => BuyerMoreScreen(),
        BUYER_NAV: (BuildContext context) => BuyerNavigationBar(),
        BUYER_SEARCHEDITEMS: (BuildContext context) => BuyerSearchedItems(),
        BUYER_PRODUCT_DETAIL: (BuildContext context) => BuyerProductDetail(),
        BUYER_PROFILE: (BuildContext context) => BuyerProfile(),
        BUYER_TRANSACTION: (BuildContext context) => BuyerTransaction(),
        BUYER_NOTIFICATION: (BuildContext context) => BuyerNotification(),
        BUYER_SETTING: (BuildContext context) => BuyerSetting(),
        BUYER_CONTACT: (BuildContext context) => BuyerContact(),
        ABOUT_US: (BuildContext context) => AboutUs(),
        FAVORITE: (BuildContext context) => Favorite(),
        BUYER_INBOX: (BuildContext context) => BuyerInbox(),
        BUYER_TRACK_DELIVERY: (BuildContext context) => BuyerTrackDelivery(),
        RATE_ORDER: (BuildContext context) => RateOrder(),
        UNBOX_VIDEOS: (BuildContext context) => UnboxVideos(),
        SELLERAPP_BUYERPROFILE: (BuildContext context) => SellerappBuyerprofile(),
        SELLER_PROFILE: (BuildContext context) => SellerProfile(),
        SELLER_MORE: (BuildContext context) => SellerMoreScreen(),
        SELLER_NOTIFICATION: (BuildContext context) => SellerNotification(),
        SELLER_SETTING: (BuildContext context) => SellerSetting(),
        SELLER_CONTACT: (BuildContext context) => SellerContact(),
        EARNING: (BuildContext context) => Earning(),
        CANCELLED_ORDERS: (BuildContext context) => CancelledOrders(),
        PENDING_CLEARANCE: (BuildContext context) => PendingClearance(),
        WITHDRAW: (BuildContext context) => WithdrawOrders(),
        CLEARED: (BuildContext context) => Cleared(),
        SELLER_HOME: (BuildContext context) => SellerHome(),
        PRODUCTS: (BuildContext context) => Products(),
        SELLER_CHAT: (BuildContext context) => SellerChat(),
        ORDER: (BuildContext context) => Order(),
        SELLER_NAV: (BuildContext context) => SellerNavigationBar(),
        SELLER_PRODUCT_DETSILD: (BuildContext context) => SellerProductDetails(),
        SELLER_ADD_CARD: (BuildContext context) => SellerAddCard(),
      },
      initialRoute: SPLASH_PAGE,
    );
  }
}