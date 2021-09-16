import 'package:flutter/material.dart';
import 'package:travelappui/constants/colors.dart';

ThemeData kAppTheme = ThemeData(
  accentColor: kAccentColor,
  primaryColor: kPrimaryColor,
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
     
  )
  
);