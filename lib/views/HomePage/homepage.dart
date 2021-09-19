import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:travelappui/components/appbar.dart';
import 'package:travelappui/components/featuredcard.dart';
import 'package:travelappui/components/travelplacedart.dart';
import 'package:travelappui/constants/colors.dart';
import 'package:travelappui/theme.dart';
import 'package:travelappui/views/HomePage/components/featurelist.dart';
import 'package:travelappui/views/HomePage/state/homepageScrollListner.dart';
import 'package:travelappui/views/HomePage/state/homepageStateProvider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _mainScrollController = ScrollController();

  final double _bottomBarHeight = 90;
  HomepageSrollListner _model;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _model = HomepageSrollListner.initialise(_mainScrollController);
  }

  @override
  Widget build(BuildContext context) {
    HomePageStateProvider homepagestate =
        Provider.of<HomePageStateProvider>(context);
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: HomeAppBar,
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _mainScrollController,
              child: Column(
                children: [
                  TopFeaturedList(),
                  Container(
                    width: size.width,
                    height: size.height * 0.33,
                    child: StreamBuilder(
                        stream: homepagestate.getFeaturedPlaces().asStream(),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData)
                            return Container(
                                alignment: Alignment.center,
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator());
                          if (snapshot.connectionState == ConnectionState.waiting)
                            return Container(
                                alignment: Alignment.center,
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator());
                                
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, "/view");
                                    },
                                    child: FeaturedCard(
                                      placeModel: snapshot.data[index],
                                    ));
                              });
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "   Recommended",
                          style: kAppTheme.textTheme.headline5,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "View All",
                              style: kAppTheme.textTheme.headline6,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(16),
                    child: StreamBuilder(
                        stream: homepagestate.getAllPlaces().asStream(),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData)
                            return Container(
                                alignment: Alignment.center,
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator());
                          if (snapshot.connectionState == ConnectionState.waiting)
                            return Container(
                                alignment: Alignment.center,
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator());

                          return GridView.builder(
                              itemCount: snapshot.data.length,
                              shrinkWrap: true,
                              primary: false,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisSpacing: 16,
                                      crossAxisSpacing: 16,
                                      crossAxisCount: 2),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, "/view");
                                    },
                                    child: TravelCard(snapshot.data[index]));
                              });
                        }),
                  ),
                ],
              ),
            ),
            AnimatedBuilder(
                animation: _model,
                builder: (context, child) {
                  return Positioned(
                      bottom: _model.bottom,
                      right: 22,
                      left: 22,
                      child: Container(
                        padding: EdgeInsets.only(left: 12, right: 12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 15,
                                  color: Colors.black.withOpacity(0.4))
                            ],
                            borderRadius: BorderRadius.circular(45)),
                        height: 75,
                        alignment: Alignment.center,
                        child: Material(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                  icon: Icon(Icons.home_rounded,
                                      size: 36, color: kAppTheme.accentColor),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(Icons.calendar_today_rounded,
                                      size: 36,
                                      color: kAppTheme.accentColor
                                          .withOpacity(0.35)),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(Icons.search,
                                      size: 36,
                                      color: kAppTheme.accentColor
                                          .withOpacity(0.35)),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(Icons.person,
                                      size: 36,
                                      color: kAppTheme.accentColor
                                          .withOpacity(0.35)),
                                  onPressed: () {})
                            ],
                          ),
                        ),
                      ));
                })
          ],
        ),
      ),
    );
  }
}
