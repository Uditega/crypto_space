import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vorem/Widget/FontStyling.dart';
import 'package:vorem/Widget/CardComponent.dart';
import 'package:vorem/Widget/CountryCode.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Scaffold(
        backgroundColor: Colors.white,
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
                    'CREATE YOUR FREE ACCOUNT',
                    style: headerTextStyle,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                Container(
                  height: constraints.maxHeight * 0.075,
                  width: constraints.maxWidth * 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                          width: 1.3,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                          width: 1.3,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Icon(
                          Icons.email_outlined,
                          color: Colors.grey.shade400,
                          size: 20.0,
                        ), // icon is 48px widget.
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontFamily: 'Asap',
                        color: Colors.grey.shade400,
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.03,
                ),
                Container(
                  width: constraints.maxWidth * 1,
                  height: constraints.maxHeight * 0.09,
                  child: CountryCode(),
                ),
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
                        Navigator.pushNamed(context, '/OTPVerification');
                      },
                      child: buttonCard ("B6d5D3", 'CREATE ACCOUNT', ButtonTextStyle)
                      ),
                    ),
                  ),
                SizedBox(
                  height: constraints.maxHeight * 0.01,
                ),
                Center(
                  child: Container(
                    width: constraints.maxWidth * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Have an account?',
                          style: TextStyle(
                              color: HexColor("#333131"),
                              fontSize: 13,
                              fontFamily: 'OpenSans_Regular'
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: (){
                            Navigator.pushNamed(context, '/Login');
                          },
                          child: Text('Login',
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
