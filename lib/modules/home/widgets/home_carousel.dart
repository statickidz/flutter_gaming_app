import 'package:flutter/material.dart';

class HomeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 218,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int i) => Card(
          color: Colors.transparent,
          child: Container(
            width: 260,
            child: Image(image: AssetImage('assets/images/card${i + 1}.png')),
          ),
        ),
      ),
    );
  }
}
