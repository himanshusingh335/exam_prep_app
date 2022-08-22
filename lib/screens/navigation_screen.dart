import 'package:flutter/material.dart';
import 'home_screen.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  MyNavigationBarState createState() => MyNavigationBarState();
}

class MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static List<Widget> widgetOptions = <Widget>[
    const HomeScreen(
      title: 'Username',
    ),
    const HomeScreen(
      title: 'Username',
    ),
    const HomeScreen(
      title: 'Username',
    ),
    const HomeScreen(
      title: 'Username',
    ),
    const HomeScreen(
      title: 'Your Classes',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.check_circle,
                  color: Colors.black,
                ),
                label: 'Training',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.auto_graph,
                  color: Colors.black,
                ),
                label: 'Performance',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_activity,
                color: Colors.black,
              ),
              label: 'Activities',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              label: 'Notifications',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                  color: Colors.black,
                ),
                label: 'Profile',
                backgroundColor: Colors.white),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 35,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
