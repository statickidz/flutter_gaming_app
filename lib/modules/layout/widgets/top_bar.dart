import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const TopBar({
    Key key,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: 5),
      child: AppBar(
        leading: Image.asset('assets/images/logo.png'),
        leadingWidth: 30,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Chip(
                label: Text(
                  '\$250',
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
                backgroundColor: Color(0xFF242A4F)),
          ),
          SizedBox(
            width: 25,
            height: 25,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
