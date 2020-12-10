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
        leading: Image.asset('images/logo.png'),
        leadingWidth: 70,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Chip(
                label: Text(
                  '\$1,250',
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
                backgroundColor: Color(0xFF242A4F)),
          ),
          SizedBox(
            width: 25,
            height: 25,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://yt3.ggpht.com/a-/AAuE7mAg0KrfFZhgSrL3d4QVM2sohJkqUFMoVesAtQ=s240-mo-c-c0xffffffff-rj-k-no'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
