import 'package:flutter/material.dart';

class HomeWidgetHead extends StatelessWidget {
  final String title;

  HomeWidgetHead(this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        ),
        Spacer(flex: 1),
        Expanded(
          flex: 1,
          child: Container(
              margin: EdgeInsets.only(top: 5),
              child: Text('View all',
                  style: TextStyle(
                      fontSize: 12, color: Theme.of(context).accentColor))),
        ),
      ],
    );
  }
}
