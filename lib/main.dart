import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelappui/routes/routes.dart';
import 'package:travelappui/views/HomePage/state/homepageStateProvider.dart';
import 'package:travelappui/views/SplashScreen/splashscreen.dart';
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
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>HomePageStateProvider())
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: kHomePageTitle,
        theme: kAppTheme,
        initialRoute: AppRoutes.ROUTE_Initial,
        onGenerateRoute: AppRoutes.generateRoutes,
      ),
    );
  }
}


