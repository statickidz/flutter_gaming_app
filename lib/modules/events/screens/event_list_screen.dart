import 'package:flutter/material.dart';
import 'package:flutter_gaming_app/modules/home/widgets/home_carousel.dart';
import 'package:flutter_gaming_app/modules/layout/widgets/heading.dart';

class EventListScreen extends StatefulWidget {
  @override
  _EventListState createState() => _EventListState();
}

class _EventListState extends State<EventListScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Image.asset(
              'assets/images/card1-notext.png',
            ),
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 5),
          ),
          Container(
            child: Heading(title: 'Active now'),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          ),
          SizedBox(height: 5),
          Container(
            child: HomeCarousel(),
            padding: EdgeInsets.only(left: 10, bottom: 5),
          ),
          Container(
            child: Heading(title: 'Upcoming'),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/images/card1.png',
                  ),
                  padding: EdgeInsets.only(left: 15, right: 7.5, bottom: 10),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/images/card2.png',
                  ),
                  padding: EdgeInsets.only(right: 15, left: 7.5, bottom: 10),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/images/card2.png',
                  ),
                  padding: EdgeInsets.only(left: 15, right: 7.5, bottom: 10),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/images/card1.png',
                  ),
                  padding: EdgeInsets.only(right: 15, left: 7.5, bottom: 10),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/images/card1.png',
                  ),
                  padding: EdgeInsets.only(left: 15, right: 7.5, bottom: 10),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/images/card2.png',
                  ),
                  padding: EdgeInsets.only(right: 15, left: 7.5, bottom: 10),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
