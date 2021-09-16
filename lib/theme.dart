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
     
     headline4: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16 ),
     headline3: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 20 ), 
     
  )
  
);