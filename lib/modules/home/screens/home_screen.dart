import 'package:flutter/material.dart';
import 'package:slayout_app/modules/home/widgets/home_banner.dart';
import 'package:slayout_app/modules/home/widgets/home_carousel.dart';
import 'package:slayout_app/modules/home/widgets/home_leaderboard.dart';
import 'package:slayout_app/modules/home/widgets/home_tag.dart';
import 'package:slayout_app/modules/home/widgets/home_widget_head.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: Container(
        child: Column(children: [
          HomeBanner(
            title: 'Host your own tournaments!',
            subTitle:
                'It’s never been easier! Just a few clicks and we take care of the rest.',
          ),
          SizedBox(height: 25),
          Row(children: [
            HomeTag('#warzone'),
            SizedBox(width: 5),
            HomeTag('#apexlegends'),
            SizedBox(width: 5),
            HomeTag('#freefire'),
          ]),
          SizedBox(height: 15),
          HomeWidgetHead('Upcoming Tournaments'),
          SizedBox(height: 5),
          HomeCarousel(),
          SizedBox(height: 15),
          HomeWidgetHead('Hall of fame'),
          SizedBox(height: 10),
          HomeLeaderboard(),
          SizedBox(height: 15),
        ]),
      ),
    );
  }
}
