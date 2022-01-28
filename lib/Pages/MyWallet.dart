import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vorem/Widget/FontStyling.dart';
import 'package:vorem/Widget/CardComponent.dart';
import 'package:vorem/Widget/TransactionComponent.dart';

class MyWallet extends StatefulWidget {
  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.chevron_left_rounded,
             size: 30,
              color: HexColor("#333131"),
            ),
          ),
          centerTitle: true,
          title: Text('Bitcoin Wallet',
            style: appBarTextStyle,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 15, 25, 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('BTC Balance',
                      style: TextStyle(
                          fontFamily: 'OpenSans_Regular',
                          color:  HexColor("#555555"),
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight* 0.003,
                    ),
                    Text('0.78 BTC',
                      style: TextStyle(
                          fontFamily: 'OpenSans_Regular',
                          color:  HexColor("#33a59e"),
                          fontSize: 32.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight* 0.007,
                    ),
                    Text('NGN 422,292.00',
                      style: TextStyle(
                          fontFamily: 'OpenSans_Regular',
                          color:  HexColor("#333131"),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: constraints.maxHeight* 0.03,
                ),
                sellBuyCard(constraints, 1, 0.1, Icons.arrow_upward_rounded, "EA2222",
                  'Sell', Icons.arrow_forward_outlined, "#33A59E", 'Send',
                  Icons.arrow_downward_rounded, "#10b77a", 'Buy', true,
                ),
                SizedBox(
                  height: constraints.maxHeight* 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Wallet Address',
                          style: TextStyle(
                              fontFamily: 'OpenSans_Regular',
                              color:  HexColor("#555555"),
                              fontSize: 13.0,
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight* 0.01,
                        ),
                        Container(
                          width: constraints.maxWidth * 0.5,
                          child: Text('1BoastSLRHtKNngkdasrt',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontFamily: 'OpenSans_Regular',
                                color:  HexColor("#333131"),
                                fontSize: 17.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                   IconButton(
                       icon:  Icon(Icons.copy_rounded,
                         size: 22,
                         color: HexColor("#555555"),
                       ),
                       onPressed: (){}
                   ),
                  ],
                ),
                SizedBox(
                  height: constraints.maxHeight* 0.03,
                ),
                transactionDate('Today'),
                SizedBox(
                  height: constraints.maxHeight* 0.03,
                ),
                transactionDetails( constraints, Icons.arrow_upward_rounded, "10b77a",
                  'BTC Purchase', 'ETH', '7.5 ETH', 'ea2222', '0.0020342 BTC', '10b77a', '31,994.39','02 : 10 pm'
                ),
                SizedBox(
                  height: constraints.maxHeight* 0.03,
                ),
                transactionDetails( constraints, Icons.arrow_downward_rounded, "ea2222",
                  'BTC Sales', 'USDC', '367.322 USDC', '10b77a', '0.0030312 BTC', 'ea2222', '29,294.39','02 : 10 pm'
                ),
                SizedBox(
                  height: constraints.maxHeight* 0.03,
                ),
                transactionDate('Yesterday'),
                SizedBox(
                  height: constraints.maxHeight* 0.03,
                ),
                transactionDetails( constraints, Icons.arrow_upward_rounded, "10b77a",
                  'BTC Purchase', 'ETH', '7.5 ETH', 'ea2222', '0.0020342 BTC', '10b77a', '31,994.39','02 : 10 pm'
                ),
                SizedBox(
                  height: constraints.maxHeight* 0.03,
                ),
                transactionDetails( constraints, Icons.arrow_downward_rounded, "ea2222",
                  'BTC Sales', 'USDC', '367.322 USDC', '10b77a', '0.0030312 BTC', 'ea2222', '29,294.39','02 : 10 pm'
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

