import 'package:flutter/material.dart';
import 'package:vorem/Pages/WelcomePage.dart';
import 'package:vorem/Pages/CreateAccount.dart';
import 'package:vorem/Pages/OTPVerification.dart';
import 'package:vorem/Pages/MoreInformation.dart';
import 'package:vorem/Pages/Login.dart';
import 'package:vorem/Pages/BottomNavigation.dart';
import 'package:vorem/Pages/MyWallet.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){
      final args = settings.arguments;
      switch (settings.name){
        case '/':
          return MaterialPageRoute(builder: (_) => WelcomePage());
        case '/CreateAccount':
          return MaterialPageRoute(builder: (_) => CreateAccount());
        case '/OTPVerification':
          return MaterialPageRoute(builder: (_) => OTPVerification());
        case '/MoreInformation':
          return MaterialPageRoute(builder: (_) => MoreInformation());
        case '/Login':
          return MaterialPageRoute(builder: (_) => Login());
        case '/BottomNavigation':
          return MaterialPageRoute(builder: (_) => BottomNavigation());
        case '/MyWallet':
          return MaterialPageRoute(builder: (_) => MyWallet());

      }
  }
}