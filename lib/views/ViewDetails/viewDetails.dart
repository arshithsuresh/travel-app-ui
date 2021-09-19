import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travelappui/components/rating,.dart';

class ViewDetails extends StatefulWidget {
  @override
  _ViewDetailsState createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  int numberPackage = 0;

  removePackage() {
    setState(() {
      numberPackage--;
      numberPackage = max(numberPackage, 0);
    });
  }

  addPackage() {
    setState(() {
      numberPackage++;
      numberPackage = min(numberPackage, 5);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData appTheme = Theme.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        child: Icon(Icons.menu),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: size.height * 0.7,
              color: Colors.grey,
              child: Image(
                image: AssetImage('assets/image/pic1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(top: 26, left: 20, right: 20),
                height: size.height * 0.54,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mount Fuji", style: appTheme.textTheme.headline2),
                    SizedBox(height: 4),
                    Row(children: [
                      Icon(
                        Icons.location_pin,
                        size: 14,
                      ),
                      SizedBox(width: 12),
                      Text(
                        "Honshu, Japan",
                        style: appTheme.textTheme.caption,
                      )
                    ]),
                    SizedBox(height: 8),
                    Rating(rating: 4.5, color: Colors.black),
                    SizedBox(height: 18),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.remove,
                              color: appTheme.accentColor,
                            ),
                            splashColor: appTheme.accentColor,
                            onPressed: () {
                              removePackage();
                            }),
                        Container(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            numberPackage.toString(),
                            style: appTheme.textTheme.caption,
                          ),
                        ),
                        IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              addPackage();
                            }),
                        SizedBox(width: 12),
                        Icon(
                          Icons.timer_rounded,
                          color: appTheme.accentColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "5 Days",
                          style: appTheme.textTheme.caption
                              .merge(TextStyle(color: appTheme.accentColor)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Description",
                      style: appTheme.textTheme.headline3
                          .merge(TextStyle(color: Colors.black)),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Enjoy your winter vacation with warmth and amazing sightseeing on the mountains. Enjoy the best experience with us!",
                      maxLines: 4,
                      overflow: TextOverflow.fade,
                      style: appTheme.textTheme.bodyText1,
                    ),
                    SizedBox(height: size.height*0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "\$400",
                                style: TextStyle(
                                    color: appTheme.accentColor,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "/Package",
                                style: TextStyle(
                                    color: appTheme.accentColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ]),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: appTheme.accentColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                elevation: 0,
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'PlayFair',
                                    fontWeight: FontWeight.bold)),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Book Now",
                                style: appTheme.textTheme.headline3,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
