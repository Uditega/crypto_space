import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vorem/Widget/FontStyling.dart';


Widget buttonCard (color, text, textStyle){

  return Card(
    elevation: 0,
    color: HexColor("$color"),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Center(
      child:Text('$text',
        style: textStyle,
      ),
    ),
  );
}


Widget sellBuyCard(
    constraints,
    width,
    height,
    IconData firstIcon,
    color1,
    firstText,
    IconData secondIcon,
    color2,
    secondText,
    IconData thirdIcon,
    color3,
    thirdText,
    bool isHomepage,
    ){

  return Container(
    width: constraints.maxWidth*width,
    height: constraints.maxHeight*height,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
          ),
        ]
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: (){
              if (isHomepage) {

              }else{

              }
            },
            child: Column(
              children: [
                Icon(firstIcon,
                  size: 20,
                  color: HexColor("$color1"),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.005,
                ),
                Text('$firstText',
                  style: TextStyle(
                    fontFamily: 'OpenSans_Regular',
                    color: HexColor("#555555"),
                    fontSize: 13.0,
                  ),
                ),
              ],
            ),
          ),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 9),
           child: VerticalDivider(
             color: HexColor("#131313"),
           ),
         ),
          Column(
            children: [
              Icon(secondIcon,
                size: 20,
                color: HexColor("$color2"),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.005,
              ),
              Text('$secondText',
                style: TextStyle(
                  fontFamily: 'OpenSans_Regular',
                  color: HexColor("#555555"),
                  fontSize: 13.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9),
            child: VerticalDivider(
              color: HexColor("#131313"),
            ),
          ),
          Column(
            children: [
              Icon(thirdIcon,
                size: 20,
                color: HexColor("$color3"),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.005,
              ),
              Text('$thirdText',
                style: TextStyle(
                  fontFamily: 'OpenSans_Regular',
                  color: HexColor("#555555"),
                  fontSize: 13.0,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget showAllCurrency(
    constraints,
    picName,
    currencyName,
    amount,
    currencyEquivalent,
    ){

  return Container(
    width: constraints.maxWidth* 1,
    height: constraints.maxHeight* 0.12,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 10,
          ),
        ]
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: constraints.maxWidth * 0.35,
            child: Row(
              children: [
                Image.asset('images/$picName.png',
                  width: 29,
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.02,
                ),
                Text('$currencyName',
                  style: TextStyle(
                    fontFamily: 'OpenSans_Regular',
                    color: HexColor("#333131"),
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('NGN $amount',
                style: TextStyle(
                  fontFamily: 'OpenSans_Regular',
                  color: HexColor("#333131"),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.02,
              ),
              Text('$currencyEquivalent',
                style: TextStyle(
                  fontFamily: 'OpenSans_Regular',
                  color: HexColor("#555555"),
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}


Widget marketTransaction (
    constraints,
    trader,
    currencyRate1,
    currencyRate2,
    currencyRate3,
    picName,
    currencyName,
    availableCurrency,
    limit,
    equivalent1,
    equivalent2,
    equivalent3,
    ){

  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 15,
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$trader',
              style: marketTransactionStyle,
              ),
              Row(
                children: [
                  Text('$currencyRate1',
                    style: marketTransactionStyle,
                  ),
                  SizedBox(
                    width: constraints.maxWidth*0.05,
                  ),
                  Text('$currencyRate2',
                    style: marketTransactionStyle,
                  ),
                  SizedBox(
                    width: constraints.maxWidth*0.05,
                  ),
                  Text('$currencyRate3',
                    style: marketTransactionStyle,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: constraints.maxHeight *0.015,
          ),
          Row(
            children: [
              Text('verified',
                style: TextStyle(
                  fontFamily: 'OpenSans_Regular',
                  color:  HexColor("#10b77a"),
                  fontSize: 13.0,
                ),
              ),
              SizedBox(
                width: constraints.maxWidth*0.02,
              ),
              Icon(Icons.check_rounded,
                color:  HexColor("#10b77a"),
                size: 15,
              ),
            ],
          ),
          SizedBox(
            height: constraints.maxHeight *0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('images/$picName.png',
                      width: 29,
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.02,
                    ),
                    Text('$currencyName',
                      style: TextStyle(
                        fontFamily: 'OpenSans_Regular',
                        color: HexColor("#333131"),
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: constraints.maxHeight *0.01,
                ),
                Text('$availableCurrency',
                  style: marketTransactionStyle,
                ),
                SizedBox(
                  height: constraints.maxHeight *0.01,
                ),
                Text('Limit',
                  style: TextStyle(
                    fontFamily: 'OpenSans_Regular',
                    color:  HexColor("#10b77a"),
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight *0.01,
                ),
                Text('$limit',
                  style: marketTransactionStyle,
                ),
              ],
            ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('$equivalent1',
                    style: TextStyle(
                      fontFamily: 'OpenSans_Regular',
                      color:  HexColor("#555555"),
                      fontSize: 13.0,
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight *0.02,
                  ),
                  Text('$equivalent2',
                    style: TextStyle(
                      fontFamily: 'OpenSans_Regular',
                      color:  HexColor("#555555"),
                      fontSize: 13.0,
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight *0.02,
                  ),
                  Text('$equivalent3',
                    style: TextStyle(
                      fontFamily: 'OpenSans_Regular',
                      color:  HexColor("#555555"),
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: constraints.maxHeight *0.03,
          ),
          Container(
            alignment: Alignment.topRight,
            child: Card(
              elevation: 0,
              color: HexColor("#10b77a"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text('Buy',
                    style: TextStyle(
                      fontFamily: 'OpenSans_Regular',
                      fontSize: 12,
                      color: Colors.white
                    ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}