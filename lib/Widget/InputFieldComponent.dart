import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget underlineInputField (
    TextEditingController myController,
    IconData firstIcon,
    String label,
    ){

  // IconData suffixIcon;
  // var suffixColor;
  // if(suffixData != null){
  //   suffixIcon = suffixData['icon'];
  //   suffixColor = suffixData['color'];
  // }

  return TextFormField(
    controller: myController,
    // initialValue: '$initialText',
    decoration: InputDecoration(
      icon:  Icon(firstIcon,
        size: 23,
        color: HexColor("#9a9393"),
      ),
      labelText: '$label',
      labelStyle: TextStyle(
          fontFamily: 'OpenSans_Regular',
        color: HexColor("#9a9393"),
        fontSize: 14
      ),
    ),
  );
}

class PasswordVisible extends StatefulWidget {
      final TextEditingController myController;
      final  IconData firstIcon;
      final String label;
      final bool _passwordVisible;
      // final IconData lastIcon;
      PasswordVisible(this.myController, this.firstIcon, this.label, this._passwordVisible);

  @override
  _PasswordVisibleState createState() => _PasswordVisibleState();
}

class _PasswordVisibleState extends State<PasswordVisible> {
  TextEditingController myController;
  IconData firstIcon;
  String label;
  bool _passwordVisible;

  @override
  void initState() {
    super.initState();

    myController = widget.myController;
    firstIcon = widget.firstIcon;
    label = widget.label;
    _passwordVisible = widget._passwordVisible;

  }

  // bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {

    // IconData lastIcon = widget.lastIcon;

    return TextFormField(
      controller: myController,
      obscureText: _passwordVisible? false: true,
      // initialValue: '$initialText',
      decoration: InputDecoration(
        icon:  Icon(firstIcon,
          size: 18,
          color: HexColor("#9a9393"),
        ),
        labelText: '$label',
        labelStyle: TextStyle(
            fontFamily: 'OpenSans_Regular',
            color: HexColor("#9a9393"),
            fontSize: 14
        ),
        suffixIcon: IconButton(
            icon: Icon(_passwordVisible ? Icons.visibility: Icons.visibility_off_outlined,
              size: 18,
              color: HexColor("#9a9393"),
            ),
            onPressed: (){
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            }
        ),
      ),
    );
  }

}
