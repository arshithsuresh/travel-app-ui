import 'package:flutter/material.dart';
import 'package:travelappui/constants/colors.dart';

ThemeData kAppTheme = ThemeData(
  accentColor: kAccentColor,
  primaryColor: kPrimaryColor,
  highlightColor: kHighlightColor,
  backgroundColor: kPrimaryColor,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0
  ),
  fontFamily: 'PlayFair',
  textTheme: TextTheme(
     
     headline3: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 20 ), 
     headline4: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 13, fontFamily: 'Roboto'),
     headline5: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16, ),
     headline6: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14, ),
     subtitle1: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13, )
  )
  
);