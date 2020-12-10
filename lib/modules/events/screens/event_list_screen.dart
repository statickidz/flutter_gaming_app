import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:slayout_app/modules/home/widgets/home_carousel.dart';
import 'package:slayout_app/modules/layout/widgets/heading.dart';

class EventListScreen extends StatefulWidget {
  @override
  _EventListState createState() => _EventListState();
}

class _EventListState extends State<EventListScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Heading(title: 'Active now'),
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
        SizedBox(height: 5),
        Container(
          child: HomeCarousel(),
          padding: EdgeInsets.only(left: 10, bottom: 5),
        ),
        Container(
          child: Heading(title: 'Upcoming'),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        ),
        Expanded(
          child: GridView.count(
            padding: EdgeInsets.symmetric(horizontal: 5),
            crossAxisCount: 2,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(20, (index) {
              return Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Image.asset(
                  'images/card1.png',
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
