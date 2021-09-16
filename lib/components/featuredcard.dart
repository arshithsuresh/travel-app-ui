import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travelappui/theme.dart';

class FeaturedCard extends StatefulWidget {
  @override
  _FeaturedCardState createState() => _FeaturedCardState();
}

class _FeaturedCardState extends State<FeaturedCard> {
  double rating;
  String title;
  bool favorite;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData appTheme = Theme.of(context);

    return Container(
      width: size.width * 0.85,
      height: max(200, size.height * 0.32),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.grey.withAlpha(90)),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 8, top: 8),
          height: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), color: Colors.grey),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Northen Mountains",
                    style: kAppTheme.textTheme.headline3,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.favorite_rounded,
                        color: kAppTheme.primaryColor,
                      ),
                      onPressed: () {})
                ],
              ),
              Row(
                children: [

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
