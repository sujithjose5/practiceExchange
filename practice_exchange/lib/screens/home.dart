import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:practiceexchange/services/auth.dart';
import '../services/auth.dart';
import 'package:practiceexchange/widgets/view_item_widget.dart';
import 'package:practiceexchange/screens/read_post/readpost.dart';
import 'package:practiceexchange/values/values.dart';
import 'package:practiceexchange/services/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practiceexchange/new_article_form.dart';

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

  final TextEditingController _filter = TextEditingController();

  Widget screenPage;
  int _selectedIndex = 0;
  String _selectedScreen = '';
  static List<String> _widgetOptions = <String>[
    '/home',
    '/readpost',
    '/newArticle',
    'Index 4: Notification',
    'Index 5: Profile',
  ];

  //navigate to different screen based on bottom navigation button click
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _selectedScreen = _widgetOptions[index];
      Navigator.pushNamed(context, _selectedScreen);
    });
  }

  Widget categoryList(String title) {
    return Container(
      width: 160.0,
      child: Card(
        color: Color.fromRGBO(0, 111, 173, 1),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getCategories() {
    //TODO: request data from database
    //TODO: build a list of categories with result of database

    //tests data for now
    List<String> categoryTitles = [
      'Disaster preparation',
      'Healthcare best practices',
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        //User profile icon
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            image: AssetImage(
                              'assets/images/blankProfilePicture.png',
                            ),
                            width: 20,
                            height: 20,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'firstname lastname',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          ' | organisation',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.grey,
                        ),
                        Text('$ranking'),
                        SizedBox(
                          width: 12.0,
                        ),
                        Icon(
                          Icons.message,
                          color: Colors.grey,
                          size: 14.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Text('23'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(
                    'assets/images/greybox.jpg',
                  ),
                  width: 90,
                  height: 90,
                ),
              ),
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

    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: categoryTitles.length,
        itemBuilder: (BuildContext context, int index) {
          return articleList(categoryTitles[index], 10);
        },
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
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
    );
  }

  Widget _divider() {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      margin: EdgeInsets.only(left: 20.0, right: 10.0),
      child: Divider(
        color: Colors.grey,
        height: 5,
      ),
    );
  }

  //make the drop down its own widget for readability

  bool toggle = false;

  String _mySelection;
  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        toggle = false;
        this._appBarTitle = new TextField(
          controller: _filter,
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search), hintText: 'Search...'),
        );
      } else {
        toggle = true;
        this._searchIcon = new Icon(Icons.search);
        _filter.clear();
      }
    });
  }

  Widget _appBarDisplay() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.white,
          )),
      child: DropdownButton(
        items: <String>['English', 'French', 'Spanish', 'Italian']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                )),
          );
        }).toList(),
        dropdownColor: Color.fromRGBO(0, 111, 173, 1),
        onChanged: (newValue) {
          setState(() {
            _mySelection = newValue;
            print(_mySelection);
          });
        },
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.white,
        ),
        hint: Text('Select language',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            )),
        value: _mySelection,
      ),
    );
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 111, 173, 1),
          title: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: _appBarDisplay(),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: _searchPressed,
            ),
          ]),
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Topics for you",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Container(
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
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Text(
                'Your Daily read',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          getArticles(),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}
