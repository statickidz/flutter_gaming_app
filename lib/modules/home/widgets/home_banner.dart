import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  final String title;
  final String subTitle;
  final String price;
  final double height;

  HomeBanner({
    required this.title,
    required this.subTitle,
    required this.price,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image(
              image: AssetImage('assets/images/gaming2.jpg'),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(
                          subTitle,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Chip(
                          label: Text(
                            price,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.background,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
