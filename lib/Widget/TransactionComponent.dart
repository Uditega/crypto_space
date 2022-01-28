import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget transactionDate(date){

  return Text('$date',
    style: TextStyle(
        fontFamily: 'OpenSans_Regular',
        color:  HexColor("#333131"),
        fontSize: 15.0,
    ),
  );
}

Widget transactionDetails(
    constraints,
    IconData firstIcon,
    iconColor,
    option,
    currency,
    paidCurrency,
    paidCurrencyColor,
    purchasedCurrency,
    purchasedColor,
    currencyEquivalent,
    time,
    ){

  return Container(
    width: constraints.maxWidth*1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: constraints.maxWidth*0.5,
          child: Row(
            children: [
              Container(
                width: constraints.maxWidth*0.1,
                height: constraints.maxHeight* 0.05,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 10,
                      ),
                    ]
                ),
                child: Icon(firstIcon,
                  size: 20,
                  color: HexColor("#$iconColor"),
                ),
                // These Icons for Sell/Send
                // Icon(Icons.arrow_upward,
                //   size: 20,
                //   color: HexColor("#10b77a"),
                // ),
                // These Icons for Buy
                // Icon(Icons.arrow_downward_rounded,
                //   size: 20,
                //   color: HexColor("#ea2222"),
                // ),
              ),
              SizedBox(
                width: constraints.maxHeight* 0.02,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // The options here is Purchase, Send and Sales
                  Text('$option',
                    style: TextStyle(
                      fontFamily: 'OpenSans_Regular',
                      color: HexColor("#333131"),
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.005,
                  ),
                  Text('paid with $currency',
                    style: TextStyle(
                      fontFamily: 'OpenSans_Regular',
                      color: HexColor("#555555"),
                      fontSize: 11.0,
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.005,
                  ),
                  Text('$paidCurrency',
                    style: TextStyle(
                      fontFamily: 'OpenSans_Regular',
                      color: HexColor("#$paidCurrencyColor"),
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('$purchasedCurrency ',
              style: TextStyle(
                fontFamily: 'OpenSans_Regular',
                color: HexColor("#$purchasedColor"),
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.01,
            ),
            Text('NGN $currencyEquivalent',
              style: TextStyle(
                fontFamily: 'OpenSans_Regular',
                color: HexColor("#555555"),
                fontSize: 11.0,
              ),
            ),
              SizedBox(
                height: constraints.maxHeight * 0.01,
              ),
              Text('$time',
                style: TextStyle(
                  fontFamily: 'OpenSans_Regular',
                  color: HexColor("#555555"),
                  fontSize: 9.0,
                ),
            ),
          ],
        ),
      ],
    ),
  );
}