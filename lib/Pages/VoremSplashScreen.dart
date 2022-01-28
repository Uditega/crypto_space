import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class VoremSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Center(child: Image.asset('images/VoremGreenLogo.png')),
         SizedBox(
           height: 20,
         ),
         Center(
           child: Text('VOREM',
           style: TextStyle(
              fontSize: 33,
             fontFamily: 'OpenSans_Bold',
             color: HexColor("33a59e")
            ),
           ),
         ),
       ],
      ),
    );
  }
}
