import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  final String title;
  final String subTitle;

  HomeBanner({
    @required this.title,
    @required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'images/banner_bg.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                title,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(subTitle, style: TextStyle(fontSize: 14))),
                ),
                Expanded(
                  flex: 1,
                  child: Chip(
                      label: Text(
                        '\$69.99/mo',
                        style: TextStyle(
                            color: Theme.of(context).backgroundColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      backgroundColor: Theme.of(context).accentColor),
                )
              ])
            ]),
          )
        ],
      ),
    );
  }
}
