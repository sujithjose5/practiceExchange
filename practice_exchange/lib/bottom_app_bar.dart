import 'package:flutter/material.dart';

class MyBottomAppBar extends StatefulWidget {
  @override
  _BottomAppBarState createState() => _BottomAppBarState();
}

class _BottomAppBarState extends State<BottomAppBar> {
  int _selectedIndex = 0;
  String _selectedScreen = '';
  static List<String> _widgetOptions = <String>[
    '/home',
    '/readpost',
    '/newArticle',
    'Index 4: Notification',
    'Index 5: Profile',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _selectedScreen = _widgetOptions[index];
      Navigator.pushNamed(context, _selectedScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(0, 111, 173, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, color: Colors.white),
            title: Text(
              'Saved',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            //change new article for pen
            icon: Icon(Icons.pages, color: Colors.white),
            title: Text(
              'Post',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.white),
            title: Text(
              'Notification',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            title: Text(
              'Profile',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xff797979),
        selectedItemColor: Color.fromRGBO(0, 111, 173, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
