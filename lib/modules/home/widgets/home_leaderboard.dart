import 'dart:math';
import 'package:flutter/material.dart';

class HomeLeaderboard extends StatefulWidget {
  @override
  _HomeLeaderboardState createState() => _HomeLeaderboardState();
}

class _HomeLeaderboardState extends State<HomeLeaderboard> {
  int totalUsers = 0;

  Widget _buildRow(String name) {
    int qty = Random().nextInt(99999);
    setState(() {
      totalUsers++;
    });
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 0,
            child: Text('$totalUsers.',
                style: TextStyle(color: Color(0xFF99A1CC))),
          ),
          Expanded(
            flex: 0,
            child: Container(
              child: SizedBox(
                height: 25,
                width: 25,
                child: CircleAvatar(
                  radius: 18,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/avatar.jfif',
                    ),
                  ),
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(name),
          ),
          Expanded(
            flex: 1,
            child: Text('\$$qty won',
                style: TextStyle(fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        color: Color(0xFF1F2545),
        child: Column(
          children: [
            _buildRow('skidz 1'),
            _buildRow('skidz 2'),
            _buildRow('skidz 3'),
            _buildRow('skidz 5'),
            _buildRow('skidz 6'),
            _buildRow('skidz 8'),
            _buildRow('skidz 5')
          ],
        ),
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
