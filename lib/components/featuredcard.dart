import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travelappui/components/rating,.dart';
import 'package:travelappui/models/placesModel.dart';
import 'package:travelappui/theme.dart';

class FeaturedCard extends StatefulWidget {

  PlaceModel placeModel;

  FeaturedCard({this.placeModel});

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
        child: Stack(
          children: [
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: ClipRRect(                
                borderRadius: BorderRadius.circular(18),
                child: Image(
                  image: AssetImage(widget.placeModel.imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 8, top: 8),
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.black.withAlpha(95)),
                child: Column(
                  children: [
                    Container(
                      height: 28,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.placeModel.placeTitle,
                            style: kAppTheme.textTheme.headline3,
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.favorite_rounded,
                                color: kAppTheme.primaryColor,
                              ),
                              onPressed: () {

                              })
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [Rating(rating: widget.placeModel.rating)],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
