import 'package:flutter/material.dart';
import './constants/constants.dart';
import './views/HomePage/homepage.dart';
import './theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext csontext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kHomePageTitle,
      theme: kAppTheme,
      home: HomePage(),
    );
  }
}


