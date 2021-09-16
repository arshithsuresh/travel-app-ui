import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travelappui/components/appbar.dart';
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
      appBar: HomeAppBar,
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 4),
                  padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                  height: 60,
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
            ),
            Container(
              margin: EdgeInsets.only(left:18,right:15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Recommended", style: kAppTheme.textTheme.headline5,),
                TextButton(onPressed: (){}, child: Text("View All"))
              ],),
            )
          ],
        ),
      ),
    );
  }
}
