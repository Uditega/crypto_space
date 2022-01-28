import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vorem/Widget/FontStyling.dart';
import 'package:vorem/Widget/CardComponent.dart';
import 'package:sms_autofill/sms_autofill.dart';


class OTPVerification extends StatefulWidget {
  @override
  _OTPVerificationState createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Image.asset('images/OTP.png'),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                ),
                Center(
                  child: Text('A four digit one time password has\n'
                  'been sent to your mobile number',
                  textAlign: TextAlign.center,
                    style: smallTextStyle,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.06,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: PinFieldAutoFill(
                    codeLength: 4,
                    onCodeChanged: (val){}
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.03,
                ),
                Center(
                  child: Container(
                    width: constraints.maxWidth * 0.63,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Didn\'t receive the code?',
                          style: TextStyle(
                              color: HexColor("#333131"),
                              fontSize: 13,
                              fontFamily: 'OpenSans_Regular'
                          ),
                        ),
                        Text('Resend code',
                          style: TextStyle(
                              color: HexColor("#33A59E"),
                              fontSize: 13,
                              fontFamily: 'OpenSans_Bold'
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.13,
                ),
                Center(
                  child: Container(
                    width: constraints.maxWidth * 0.5,
                    height: constraints.maxHeight * 0.082,
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: (){
                        Navigator.pushNamed(context, '/MoreInformation');
                      },
                      child: buttonCard ("B6d5D3", 'NEXT', ButtonTextStyle)
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
