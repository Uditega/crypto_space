import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vorem/Widget/FontStyling.dart';
import 'package:vorem/Widget/InputFieldComponent.dart';
import 'package:vorem/Widget/CardComponent.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 35, 25, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: constraints.maxHeight * 0.2,
                  child: Image.asset(
                    'images/VoremGreenLogo.png',
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.01,
                ),
                Container(
                  height: constraints.maxHeight * 0.05,
                  child: Text(
                    'LOGIN',
                    style: headerTextStyle,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                underlineInputField (userNameController, Icons.perm_identity, 'Username',),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                PasswordVisible(passwordController, Icons.lock_open_outlined, 'Password', false),
                SizedBox(
                  height: constraints.maxHeight * 0.1,
                ),
                Center(
                  child: Container(
                    width: constraints.maxWidth * 0.8,
                    height: constraints.maxHeight * 0.082,
                    child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: (){
                          Navigator.pushNamed(context, '');
                        },
                        child: buttonCard ("B6d5D3", 'LOGIN', ButtonTextStyle)
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.01,
                ),
                Center(
                  child: Container(
                    width: constraints.maxWidth * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Don\'t have an account?',
                          style: TextStyle(
                              color: HexColor("#333131"),
                              fontSize: 13,
                              fontFamily: 'OpenSans_Regular'
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: (){
                            Navigator.pushNamed(context, '/CreateAccount');
                          },
                          child: Text('SignUp',
                            style: TextStyle(
                                color: HexColor("#33A59E"),
                                fontSize: 13,
                                fontFamily: 'OpenSans_Regular'
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

