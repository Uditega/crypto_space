import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class CountryCode extends StatefulWidget {
  @override
  _CountryCodeState createState() => _CountryCodeState();
}

class _CountryCodeState extends State<CountryCode> {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  width: constraints.maxWidth* 1,
                  child: FittedBox(
                    child: Row(
                      children: [
                        SizedBox(
                          height: 58,
                          width: 90,
                          child: Card(
                            elevation: 0,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                bottomLeft: Radius.circular(5.0),
                              ),
                              side: BorderSide(
                                color: Colors.grey.shade400,
                                width: 1.3,
                              ),
                            ),
                            child: CountryCodePicker(
                              initialSelection: 'NG',
                              favorite: ['+234', 'NG'],
                              showFlagDialog: true,
                              comparator: (a, b) => b.name.compareTo(a.name),
                              onInit: (code) {
                                // print("on init ${code.name} ${code.dialCode} ${code.name}");
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 210.0,
                          height: 50.0,
                          child: TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade400,
                                  width: 1.3,
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade400,
                                  width: 1.3,
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
