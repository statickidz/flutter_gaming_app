import 'package:flutter/material.dart';

class HomeTag extends StatelessWidget {
  final String title;

  HomeTag(this.title);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        color: Color(0xFF242A4F),
        child: Text(
          title,
          style: TextStyle(
              color: Color(0xFF99A1CC),
              fontWeight: FontWeight.w400,
              fontSize: 12),
        ),
      ),
    );
  }
}
