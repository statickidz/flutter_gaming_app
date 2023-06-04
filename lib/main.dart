import 'package:flutter/gestures.dart';
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
      scrollBehavior: MyCustomScrollBehavior(),
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

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
