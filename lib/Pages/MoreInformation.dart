import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vorem/Widget/FontStyling.dart';
import 'package:vorem/Widget/InputFieldComponent.dart';
import 'package:vorem/Widget/CardComponent.dart';

class MoreInformation extends StatefulWidget {
  @override
  _MoreInformationState createState() => _MoreInformationState();
}

class _MoreInformationState extends State<MoreInformation> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool _value = false;

  @override
  Widget build(BuildContext context) {

   return LayoutBuilder(builder: (ctx, constraints){
     return Scaffold(
       backgroundColor: Colors.white,
       body: SafeArea(
         child: SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
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
                     'TELL US MORE ABOUT YOURSELF',
                     style: headerTextStyle,
                   ),
                 ),
                 SizedBox(
                   height: constraints.maxHeight * 0.01,
                 ),
                 underlineInputField (firstNameController, Icons.perm_identity, 'First Name',),
                 SizedBox(
                   height: constraints.maxHeight * 0.01,
                 ),
                 underlineInputField (lastNameController, Icons.person_add_alt_1_outlined, 'Last Name'),
                 SizedBox(
                   height: constraints.maxHeight * 0.01,
                 ),
                 underlineInputField (userNameController, Icons.perm_identity, 'Username',),
                 SizedBox(
                   height: constraints.maxHeight * 0.01,
                 ),
                PasswordVisible(passwordController, Icons.lock_open_outlined, 'Password', false),
                 SizedBox(
                   height: constraints.maxHeight * 0.01,
                 ),
                 PasswordVisible(confirmPasswordController, Icons.lock_outline_rounded, 'Confirm Password', false),
                 SizedBox(
                   height: constraints.maxHeight * 0.02,
                 ),
                 Row(
                   children: [
                     Radio(
                         value: true,
                         groupValue: _value,
                         onChanged: (val){
                           setState(() {
                             _value = val;
                           });
                         }
                     ),
                     Text('I accept the term and condition in the\nlicense Agreement',
                        style: smallTextStyle,
                     ),
                   ],
                 ),
                 SizedBox(
                   height: constraints.maxHeight * 0.02,
                 ),
                 Center(
                   child: Container(
                     width: constraints.maxWidth * 0.9,
                     height: constraints.maxHeight * 0.082,
                     child: GestureDetector(
                         behavior: HitTestBehavior.opaque,
                         onTap: (){
                           Navigator.pushNamed(context, '/BottomNavigation');
                         },
                         child: buttonCard ("B6d5D3", 'CREATE ACCOUNT', ButtonTextStyle)
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
       ),
     );
   });

  }
}
