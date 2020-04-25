import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
final databaseReference = Firestore.instance;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _searchIcon = new Icon(Icons.search);

  Widget _appBarTitle = RaisedButton(
      color: Colors.transparent,
      onPressed: () {},
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Colors.white)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Languages',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
        ],
      ));

  final TextEditingController _filter = TextEditingController();

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Saved',
      style: optionStyle,
    ),
    Text(
      'Index 2: New Article',
      style: optionStyle,
    ),
    Text(
      'Index 4: Notification',
      style: optionStyle,
    ),
    Text(
      'Index 5: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget categoryList(String title) {
    return Container(
      width: 160.0,
      child: Card(
        color: Colors.blue,
        child: Column(
          children: <Widget>[
            Center(child: Text(title)),
          ],
        ),
      ),
    );
  }

  Widget getCategories() {
    //TODO: request data from database
    //TODO: build a list of categories with result of database

    //tests data for now
    List<String> categoryTitles = [
      'Disaster prep',
      'healthcare best practices',
      'Infection control',
    ];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: categoryTitles.length,
      itemBuilder: (BuildContext context, int index) {
        return categoryList(categoryTitles[index]);
      },
    );
    categoryList('Disaster prep');
  }

  Widget articleList(String title, int ranking) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 160.0,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      //User profile icon
                      Text(
                        'firstname lastname',
                      ),
                      Text(' | organisation'),
                    ],
                  ),
                  Text(title),
                  Text('Some text.'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.arrow_drop_up,
                    color: Colors.black,
                  ),
                  Text('$ranking'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getArticles() {
    List<String> categoryTitles = [
      'Article title',
      'Article title 2',
      'Article title 3',
      'Article title 4',
      'Article title 5',
      'Article title 6',
      'Article title 7',
      'Article title 8',
    ];

    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: categoryTitles.length,
      itemBuilder: (BuildContext context, int index) {
        return articleList(categoryTitles[index], 10);
      },
    );
  }

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          controller: _filter,
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search), hintText: 'Search...'),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text('Search Example');
        _filter.clear();
      }
    });
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          title: Text('Saved'),
        ),
        BottomNavigationBarItem(
          //change new article for pen
          icon: Icon(Icons.pages),
          title: Text('New Article'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          title: Text('Notification'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile'),
        ),
      ],
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: const Color(0xff797979),
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }

  Widget _divider() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 20.0, right: 10.0),
        child: Divider(
          color: Colors.black,
          height: 5,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarTitle,
        leading: new IconButton(
          icon: _searchIcon,
          onPressed: _searchPressed,
        ),
      ),
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text('Topics for you'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 80.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                getCategories(),
              ],
            ),
          ),
          // add divider
          _divider(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text('Your Daily Read'),
            ),
          ),
          getArticles(),
        ],
      ),
//      Center(
//        child: _widgetOptions.elementAt(_selectedIndex),
//      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}
