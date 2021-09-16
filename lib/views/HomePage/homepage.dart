import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travelappui/components/featuredcard.dart';
import 'package:travelappui/constants/colors.dart';
import 'package:travelappui/theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> kTopListLink = [
    'Popular',
    'Featured',
    'Most Visited',
    'Europe',
    'Asia',
    'Canada',
    'Australia'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Center(child: Text("Discover", style: TextStyle(fontWeight: FontWeight.w900, letterSpacing: 2),)),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.account_circle,
                size: 36,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                  height: 42,
                  width: size.width,
                  child: ListView.builder(
                      itemCount: kTopListLink.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        if (index == 0)
                          return TextButton(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4, right: 4),
                              child: Text(kTopListLink[index],
                                  style: kAppTheme.textTheme.headline4.merge(
                                      TextStyle(fontWeight: FontWeight.bold))),
                            ),
                            onPressed: () {},
                          );

                        return TextButton(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4, right: 4),
                            child: Text(kTopListLink[index],
                                style: kAppTheme.textTheme.headline4),
                          ),
                          onPressed: () {},
                        );
                      }),
                ),
              ],
            ),
            Container(
              width: size.width,
              height: size.height * 0.33,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return FeaturedCard();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
