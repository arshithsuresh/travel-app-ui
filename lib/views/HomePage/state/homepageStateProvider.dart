
import 'package:flutter/material.dart';

class HomePageStateProvider extends ChangeNotifier
{

  bool showBottomDrawer = true;

  void setShowBottomDrawer(bool value){
    this.showBottomDrawer = value;
    print("\n Bottom Scroll State : "+this.showBottomDrawer.toString());
    notifyListeners();
  }

  List<String> kTopListLink = [
    'Popular',
    'Featured',
    'Most Visited',    
    'Europe',
    'Asia',
    'Canada',
    'Australia'
  ];

  Future<void> GetTopList() async {

      await Future.delayed(const Duration(milliseconds: 500), (){});

      kTopListLink.add("India");

      notifyListeners();
      
  }

}