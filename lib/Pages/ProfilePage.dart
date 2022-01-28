import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text('Profile Page'),
        ),
      );
    });
  }
}