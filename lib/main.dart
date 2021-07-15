import 'package:flutter/material.dart';
import 'package:flutter_gaming_app/modules/layout/screens/navigation_screen.dart';
import 'package:flutter_gaming_app/theme/style.dart';

void main() {
  runApp(GamingApp());
}

class GamingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gaming App UI',
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        left: false,
        top: false,
        right: false,
        bottom: false,
        child: NavigationScreen(),
      ),
    );
  }
}
