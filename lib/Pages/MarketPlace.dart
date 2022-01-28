import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vorem/Widget/FontStyling.dart';
import 'package:vorem/Widget/CardComponent.dart';

class MarketPlace extends StatefulWidget {
  @override
  _MarketPlaceState createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Market',
            style: appBarTextStyle,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: constraints.maxWidth * 0.7,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 15,
                            ),
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            prefixIcon: IconButton(
                              icon: Icon(Icons.search_rounded),
                            ),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              fontFamily: 'Asap',
                              color: Colors.grey.shade400,
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.sort_rounded,
                            color: HexColor("#33a59e"),
                          ),
                          onPressed: () {}),
                    ]),
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                ),
                Container(
                  height: constraints.maxHeight * 0.08,
                  width: constraints.maxWidth * 1,
                  decoration: BoxDecoration(
                    color: HexColor("#738d8c"),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Trader',
                          style: TextStyle(
                            fontFamily: 'OpenSans_Bold',
                            color: Colors.white,
                            fontSize: 13.0,
                          ),
                        ),
                        Text(
                          'Rates',
                          style: TextStyle(
                            fontFamily: 'OpenSans_Bold',
                            color: Colors.white,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.01,
                ),
                marketTransaction(
                  constraints,
                  'Abigail22',
                  'Eth',
                  'Usdt',
                  'Usdc',
                  'Bitcoin',
                  'Bitcoin',
                  '0.8 BTC',
                  '0.2 btc - 0.8 btc',
                  '0.2btc/2.93eth',
                  '0.2btc/2903.1Usdt',
                  '0.2btc/1093.1Usdc',
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                ),
                marketTransaction(
                  constraints,
                  'Melisa 77',
                  'Btc',
                  'Usdt',
                  'Usdc',
                  'Eth',
                  'Ethereum',
                  '0.8 ETH',
                  '0.002 eth - 0.008 eth',
                  '0.002eth/2.93btc',
                  '0.002btc/4903.1Usdt',
                  '0.002btc/2293.1Usdc',
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
