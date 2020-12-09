import 'package:flutter/material.dart';
import 'package:slayout_app/modules/navigation/screens/navigation_screen.dart';
import 'package:slayout_app/theme/style.dart';

void main() {
  runApp(SlayoutApp());
}

class SlayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme(),
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          left: false,
          top: false,
          right: false,
          bottom: false,
          child: NavigationScreen(),
        ));
  }
}
