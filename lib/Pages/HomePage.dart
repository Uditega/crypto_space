import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vorem/Widget/FontStyling.dart';
import 'package:vorem/Widget/CardComponent.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 30, 25, 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Welcome',
                              style: smallTextStyle,
                              ),
                              SizedBox(
                                height: constraints.maxHeight* 0.003,
                              ),
                              Text('John Doe',
                                style: TextStyle(
                                  fontFamily: 'OpenSans_Regular',
                                  color:  HexColor("#33a59e"),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          ),
                         IconButton(
                             icon:  Icon(Icons.notifications_none_rounded,
                               color: HexColor("#33A59E"),
                               size: 24,
                             ),
                             onPressed: (){}
                         ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight* 0.03,
                    ),
                    Container(
                      height: constraints.maxHeight* 0.32,
                      child: Stack(
                        children: [
                          Container(
                            width: constraints.maxWidth*1,
                            height: constraints.maxHeight* 0.28,
                            child: Card(
                              elevation: 0,
                              color: HexColor("#33A59E"),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20, top: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('My Balance',
                                      style: TextStyle(
                                        fontFamily: 'OpenSans_Regular',
                                        color:  Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    SizedBox(
                                      height: constraints.maxHeight * 0.02,
                                    ),
                                    Text('NGN 20,1090.00',
                                      style: TextStyle(
                                          fontFamily: 'OpenSans_Regular',
                                          color:  Colors.white,
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.w600,
                                        letterSpacing: 1.1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            bottom: 10,
                              child:  sellBuyCard(constraints, 0.7, 0.1, Icons.arrow_upward_rounded, "EA2222",
                                'Sell', Icons.card_giftcard_rounded, "#33A59E", 'Gift cards',
                                  Icons.arrow_downward_rounded, "#10b77a", 'Buy', true,
                                ),
                              ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight* 0.03,
                    ),
                    Text('My Portfolio',
                      style: TextStyle(
                        fontFamily: 'OpenSans_Regular',
                        color:  HexColor("#333131"),
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight* 0.03,
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                        onTap: (){
                        Navigator.pushNamed(context, '/MyWallet');
                        },
                        child: showAllCurrency(constraints, 'Bitcoin', 'Bitcoin', '422,292.00', '0.78 btc'),
                    ),
                    SizedBox(
                      height: constraints.maxHeight* 0.02,
                    ),
                    showAllCurrency(constraints, 'Eth', 'Ethereum', '49,345.00', '0.52 eth'),
                    SizedBox(
                      height: constraints.maxHeight* 0.02,
                    ),
                    showAllCurrency(constraints, 'Usdt', 'USDT', '420,245.00', '0.52 USDT'),
                    SizedBox(
                      height: constraints.maxHeight* 0.02,
                    ),
                    showAllCurrency(constraints, 'Usdc', 'USDC', '420,105.73', '0.52 USDC'),
                  ],
                ),
              ),
            )
        ),
      );
    });
  }
}
