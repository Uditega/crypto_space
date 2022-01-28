import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OnBoardOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('images/VoremBTC.png',
              height: 350,
                width: 300,
              ),
            ),
            SizedBox(
              height: constraints.maxHeight* 0.2,
            ),
            Center(
              child: Container(
                height: constraints.maxHeight* 0.07,
                width: constraints.maxWidth* 0.6,
                child: Card(
                  elevation: 0,
                    color: HexColor("33A59E"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/CreateAccount');
                        },
                        child: Text('Create Account',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'OpenSans_Regular'
                          ),
                        ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
