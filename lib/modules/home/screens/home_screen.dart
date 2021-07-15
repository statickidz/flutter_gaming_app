import 'package:flutter/material.dart';
import 'package:flutter_gaming_app/modules/home/widgets/home_banner.dart';
import 'package:flutter_gaming_app/modules/home/widgets/home_carousel.dart';
import 'package:flutter_gaming_app/modules/home/widgets/home_leaderboard.dart';
import 'package:flutter_gaming_app/modules/home/widgets/home_tag.dart';
import 'package:flutter_gaming_app/modules/layout/widgets/heading.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: Container(
        child: Column(children: [
          HomeBanner(
            title: 'The world’s largest competitive gaming platform',
            subTitle:
                'Sign up for cups, get information about your matches and report your results!',
            price: '\$12/mo',
            height: 210,
          ),
          SizedBox(height: 25),
          Row(
            children: [
              HomeTag('#warzone'),
              SizedBox(width: 5),
              HomeTag('#apexlegends'),
              SizedBox(width: 5),
              HomeTag('#freefire'),
            ],
          ),
          SizedBox(height: 15),
          Heading(
            title: 'Upcoming Tournaments',
            onPressed: () {},
          ),
          SizedBox(height: 5),
          HomeCarousel(),
          SizedBox(height: 15),
          Heading(
            title: 'Hall of fame',
            onPressed: () {},
          ),
          SizedBox(height: 10),
          HomeLeaderboard(),
          SizedBox(height: 15),
        ]),
      ),
    );
  }
}
