import 'package:flutter/material.dart';
import 'package:vorem/Pages/VoremSplashScreen.dart';
import 'package:vorem/Pages/OnboardOne.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          pageSnapping: true,
          scrollDirection: Axis.horizontal,
          children: [
            VoremSplashScreen(),
            OnBoardOne()
          ],
        ),
    );
  }
}
