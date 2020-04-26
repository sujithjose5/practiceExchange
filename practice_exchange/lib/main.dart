import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:practiceexchange/screens/authenticate/signup.dart';
import 'package:practiceexchange/models/user.dart';
import 'package:practiceexchange/services/auth.dart';
import 'package:practiceexchange/screens/wrapper.dart';
import 'package:practiceexchange/screens/home.dart';

final databaseReference = Firestore.instance;

void main() {
  return runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Wrapper(),
        routes: {
          '/authentication': (context) => SignUp(),
        },
      ),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  List<String> languages = [
//    'English',
//    'French',
//    'Spanish',
//  ];
//  String selectedLanguage = 'English';
//
//  Icon _searchIcon = new Icon(Icons.search);
//
//  Widget _appBarTitle = RaisedButton(
//      color: Colors.transparent,
//      onPressed: () {},
//      shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.circular(10.0),
//          side: BorderSide(color: Colors.white)),
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        children: <Widget>[
//          Text(
//            'Languages',
//            style: TextStyle(
//              fontSize: 20,
//              fontWeight: FontWeight.w700,
//              color: Colors.white,
//            ),
//          ),
//          Icon(
//            Icons.arrow_drop_down,
//            color: Colors.white,
//          ),
//        ],
//      ));
//
//  final TextEditingController _filter = TextEditingController();
//
//  int _selectedIndex = 0;
//  static const TextStyle optionStyle =
//      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//  static const List<Widget> _widgetOptions = <Widget>[
//    Text(
//      'Index 0: Home',
//      style: optionStyle,
//    ),
//    Text(
//      'Index 1: Saved',
//      style: optionStyle,
//    ),
//    Text(
//      'Index 2: New Article',
//      style: optionStyle,
//    ),
//    Text(
//      'Index 4: Notification',
//      style: optionStyle,
//    ),
//    Text(
//      'Index 5: Profile',
//      style: optionStyle,
//    ),
//  ];
//
//  //navigate to different screen based on bottom navigation button click
//  void _onItemTapped(int index) {
//    setState(() {
//      _selectedIndex = index;
//    });
//  }
//
//  Widget categoryList(String title) {
//    return Container(
//      width: 160.0,
//      child: Card(
//        color: Color.fromRGBO(0, 111, 173, 1),
//        child: Padding(
//          padding: const EdgeInsets.all(8.0),
//          child: Column(
//            children: <Widget>[
//              Align(
//                alignment: Alignment.bottomLeft,
//                child: Text(
//                  title,
//                  style: TextStyle(
//                    fontSize: 20,
//                    color: Colors.white,
//                  ),
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//
//  Widget getCategories() {
//    //TODO: request data from database
//    //TODO: build a list of categories with result of database
//
//    //tests data for now
//    List<String> categoryTitles = [
//      'Disaster prep',
//      'healthcare best practices',
//      'Infection control',
//    ];
//
//    return ListView.builder(
//      scrollDirection: Axis.horizontal,
//      shrinkWrap: true,
//      itemCount: categoryTitles.length,
//      itemBuilder: (BuildContext context, int index) {
//        return categoryList(categoryTitles[index]);
//      },
//    );
//    categoryList('Disaster prep');
//  }
//
//  Widget articleList(String title, int ranking) {
//    return Padding(
//      padding: const EdgeInsets.all(2.0),
//      child: Container(
//        width: 160.0,
//        child: Container(
//          decoration: BoxDecoration(
//            border: Border.all(
//              color: Colors.grey,
//              width: 1,
//            ),
//            borderRadius: BorderRadius.circular(4),
//          ),
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              Column(
//                children: <Widget>[
//                  Row(
//                    children: <Widget>[
//                      //User profile icon
//                      Text(
//                        'firstname lastname',
//                      ),
//                      Text(' | organisation'),
//                    ],
//                  ),
//                  Text(title),
//                  Text('Some text.'),
//                ],
//              ),
//              Column(
//                children: <Widget>[
//                  Icon(
//                    Icons.arrow_drop_up,
//                    color: Colors.black,
//                  ),
//                  Text('$ranking'),
//                ],
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//
//  Widget getArticles() {
//    List<String> categoryTitles = [
//      'Article title',
//      'Article title 2',
//      'Article title 3',
//      'Article title 4',
//      'Article title 5',
//      'Article title 6',
//      'Article title 7',
//      'Article title 8',
//    ];
//
//    return ListView.builder(
//      scrollDirection: Axis.vertical,
//      shrinkWrap: true,
//      itemCount: categoryTitles.length,
//      itemBuilder: (BuildContext context, int index) {
//        return articleList(categoryTitles[index], 10);
//      },
//    );
//  }
//
//  void _searchPressed() {
//    setState(() {
//      if (this._searchIcon.icon == Icons.search) {
//        this._searchIcon = new Icon(Icons.close);
//        this._appBarTitle = new TextField(
//          controller: _filter,
//          decoration: new InputDecoration(
//              prefixIcon: new Icon(Icons.search), hintText: 'Search...'),
//        );
//      } else {
//        this._searchIcon = new Icon(Icons.search);
//        _filter.clear();
//      }
//    });
//  }
//
//  Widget _bottomNavigationBar() {
//    return BottomNavigationBar(
//      backgroundColor: Color.fromRGBO(0, 111, 173, 1),
//      items: const <BottomNavigationBarItem>[
//        BottomNavigationBarItem(
//          icon: Icon(Icons.home, color: Colors.white),
//          title: Text(
//            'Home',
//            style: TextStyle(color: Colors.white),
//          ),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.bookmark, color: Colors.white),
//          title: Text(
//            'Saved',
//            style: TextStyle(color: Colors.white),
//          ),
//        ),
//        BottomNavigationBarItem(
//          //change new article for pen
//          icon: Icon(Icons.pages, color: Colors.white),
//          title: Text(
//            'New Article',
//            style: TextStyle(color: Colors.white),
//          ),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.notifications, color: Colors.white),
//          title: Text(
//            'Notification',
//            style: TextStyle(color: Colors.white),
//          ),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.person, color: Colors.white),
//          title: Text(
//            'Profile',
//            style: TextStyle(color: Colors.white),
//          ),
//        ),
//      ],
//      currentIndex: _selectedIndex,
//      type: BottomNavigationBarType.fixed,
//      unselectedItemColor: const Color(0xff797979),
//      selectedItemColor: Color.fromRGBO(0, 111, 173, 1),
//      onTap: _onItemTapped,
//    );
//  }
//
//  Widget _divider() {
//    return Expanded(
//      child: Container(
//        margin: EdgeInsets.only(left: 20.0, right: 10.0),
//        child: Divider(
//          color: Colors.grey,
//          height: 5,
//        ),
//      ),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Color.fromRGBO(0, 111, 173, 1),
//        title: _appBarTitle,
//        leading: new IconButton(
//          icon: _searchIcon,
//          onPressed: _searchPressed,
//        ),
//      ),
//      body: Column(
//        children: <Widget>[
//          Align(
//            alignment: Alignment.centerLeft,
//            ),
//          Container(
//            margin: EdgeInsets.symmetric(vertical: 20.0),
//            height: 80.0,
//            child: ListView(
//              scrollDirection: Axis.horizontal,
//              children: <Widget>[
//                getCategories(),
//              ],
//            ),
//          ),
//          // add divider
//          _divider(),
//          Align(
//            alignment: Alignment.centerLeft,
//            child: Container(
//              child: Text(
//                'Your Daily Read',
//                style: TextStyle(
//                  fontSize: 20,
//                  color: Color.fromRGBO(0, 111, 173, 1),
//                ),
//              ),
//            ),
//          ),
//          getArticles(),
//        ],
//      ),
////      Center(
////        child: _widgetOptions.elementAt(_selectedIndex),
////      ),
//      bottomNavigationBar: _bottomNavigationBar(),
//    );
//  }
//}
