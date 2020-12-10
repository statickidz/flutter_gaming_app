import 'package:flutter/material.dart';
import 'package:slayout_app/modules/events/screens/event_list_screen.dart';
import 'package:slayout_app/modules/home/screens/home_screen.dart';
import 'package:slayout_app/modules/layout/widgets/top_bar.dart';

class NavigationScreen extends StatefulWidget {
  NavigationScreen({Key key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<NavigationScreen> {
  int _selectedIndex = 0;

  static Widget comingSoon = Container(
    child: Center(
      child: Text(
        'STAY TUNNED!',
        style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
      ),
    ),
    padding: EdgeInsets.all(15),
  );

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    EventListScreen(),
    comingSoon,
    comingSoon,
    comingSoon,
  ];

  static List<BottomNavigationBarItem> _navigationItems =
      <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: _getIconImage('home_icon'),
      activeIcon: _getIconImage('home_icon_active'),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: _getIconImage('events_icon'),
      activeIcon: _getIconImage('events_icon_active'),
      label: 'Events',
    ),
    BottomNavigationBarItem(
      icon: _getIconImage('cart_icon'),
      activeIcon: _getIconImage('cart_icon_active'),
      label: 'Store',
    ),
    BottomNavigationBarItem(
      icon: _getIconImage('users_icon'),
      activeIcon: _getIconImage('users_icon_active'),
      label: 'Account',
    ),
    BottomNavigationBarItem(
      icon: _getIconImage('menu_icon'),
      activeIcon: _getIconImage('menu_icon_active'),
      label: 'Menu',
    ),
  ];

  static Image _getIconImage(String name) {
    return Image.asset(
      'images/$name.png',
      height: 32,
      width: 32,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        height: 60,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _navigationItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
