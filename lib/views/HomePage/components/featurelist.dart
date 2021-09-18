import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelappui/theme.dart';
import 'package:travelappui/views/HomePage/state/homepageStateProvider.dart';

class TopFeaturedList extends StatefulWidget {
  @override
  _TopFeaturedListState createState() => _TopFeaturedListState();
}

class _TopFeaturedListState extends State<TopFeaturedList> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;   
    
    return Container(
              margin: EdgeInsets.only(bottom: 4),
              padding: EdgeInsets.only(left: 12, right: 12, top: 8),
              height: 60,
              width: size.width,
              child: Consumer<HomePageStateProvider>(
                builder: (context,state,s){
                  return ListView.builder(
                    itemCount: state.kTopListLink.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      if (index == 0)
                        return TextButton(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4, right: 4),
                            child: Text(state.kTopListLink[index],
                                style: kAppTheme.textTheme.headline4.merge(
                                    TextStyle(fontWeight: FontWeight.bold, color: kAppTheme.accentColor))),
                          ),
                          onPressed: () {
                               
                          },
                        );

                      return TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4, right: 4),
                          child: Text(state.kTopListLink[index],
                              style: kAppTheme.textTheme.headline4),
                        ),
                        onPressed: () {},
                      );
                    });
                },                
              ),
            );
  }
}