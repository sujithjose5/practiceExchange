import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:practiceexchange/services/auth.dart';
import '../services/auth.dart';
import 'package:practiceexchange/widgets/view_item_widget.dart';
import 'package:practiceexchange/read_post_widget/read_post_widget.dart';
import 'package:practiceexchange/values/values.dart';
import 'package:practiceexchange/services/database.dart';



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> languages = [
    'English',
    'French',
    'Spanish',
  ];
  String selectedLanguage = 'English';

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

  //navigate to different screen based on bottom navigation button click
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 1) {
      Navigator.pushNamed(context, '/readpost');
    }
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
        _filter.clear();
      }
    });
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
            'New Article',
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
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 20.0, right: 10.0),
        child: Divider(
          color: Colors.grey,
          height: 5,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 111, 173, 1),
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: FlatButton(
                onPressed: getData(),
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
            margin: EdgeInsets.symmetric(vertical: 5.0),
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
              child: Text(
                'Trending Posts',
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
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

//class HomeScreen extends StatefulWidget {
//  void onGroupPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ReadPostWidget()));
//  @override
//  _HomeScreenState createState() => _HomeScreenState();
//}
//
//class _HomeScreenState extends State<HomeScreen> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        actions: <Widget>[
//          FlatButton(
//            child: Text('Sign Out'),
//            onPressed: (){
//              AuthService().signOut();
//            },
//          )
//        ],
//      ),
//      body: Container(
//        constraints: BoxConstraints.expand(),
//        decoration: BoxDecoration(
//          color: Color.fromARGB(255, 255, 255, 255),
//        ),
//        child: Stack(
//          alignment: Alignment.bottomCenter,
//          children: [
//            Positioned(
//              left: -1,
//              top: 0,
//              right: -39,
//              bottom: 0,
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.stretch,
//                children: [
//                  Container(
//                    height: 113,
//                    margin: EdgeInsets.only(left: 1, right: 39),
//                    child: Stack(
//                      alignment: Alignment.center,
//                      children: [
//                        Positioned(
//                          left: 0,
//                          top: 0,
//                          right: 0,
//                          child: Container(
//                            height: 113,
//                            decoration: BoxDecoration(
//                              color: AppColors.primaryBackground,
//                            ),
//                            child: Container(),
//                          ),
//                        ),
//                        Positioned(
//                          left: 27,
//                          top: 58,
//                          right: 26,
//                          child: Row(
//                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                            children: [
//                              Align(
//                                alignment: Alignment.topLeft,
//                                child: Container(
//                                  width: 104,
//                                  height: 38,
//                                  decoration: BoxDecoration(
//                                    border: Border.all(
//                                      width: 1,
//                                      color: Color.fromARGB(255, 255, 255, 255),
//                                    ),
//                                    borderRadius: BorderRadius.all(Radius.circular(3.5)),
//                                  ),
//                                  child: Container(),
//                                ),
//                              ),
//                              Spacer(),
//                              Align(
//                                alignment: Alignment.topLeft,
//                                child: Container(
//                                  width: 27,
//                                  height: 27,
//                                  margin: EdgeInsets.only(top: 7),
//                                  child: Image.asset(
//                                    "assets/images/shape-4.png",
//                                    fit: BoxFit.none,
//                                  ),
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Positioned(
//                          left: 45,
//                          top: 71,
//                          child: Row(
//                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                            children: [
//                              Align(
//                                alignment: Alignment.topLeft,
//                                child: Container(
//                                  width: 48,
//                                  height: 13,
//                                  child: Image.asset(
//                                    "assets/images/shape-5.png",
//                                    fit: BoxFit.none,
//                                  ),
//                                ),
//                              ),
//                              Align(
//                                alignment: Alignment.topLeft,
//                                child: Container(
//                                  width: 8,
//                                  height: 4,
//                                  margin: EdgeInsets.only(left: 17, top: 5),
//                                  child: Image.asset(
//                                    "assets/images/path-3.png",
//                                    fit: BoxFit.none,
//                                  ),
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Align(
//                    alignment: Alignment.topLeft,
//                    child: Container(
//                      margin: EdgeInsets.only(left: 29, top: 27),
//                      child: Text(
//                        "Topics for you",
//                        textAlign: TextAlign.left,
//                        style: TextStyle(
//                          color: AppColors.primaryText,
//                          fontFamily: "Montserrat",
//                          fontWeight: FontWeight.w600,
//                          fontSize: 20,
//                        ),
//                      ),
//                    ),
//                  ),
//                  Align(
//                    alignment: Alignment.topRight,
//                    child: Container(
//                      width: 425,
//                      height: 90,
//                      margin: EdgeInsets.only(top: 15),
//                      decoration: BoxDecoration(
//                        borderRadius: BorderRadius.all(Radius.circular(6)),
//                      ),
//                      child: GridView.builder(
//                        scrollDirection: Axis.horizontal,
//                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                          maxCrossAxisExtent: 90,
//                          childAspectRatio: 0.65693,
//                          mainAxisSpacing: 10,
//                        ),
//                        itemBuilder: (context, index) => ViewItemWidget(),
//                      ),
//                    ),
//                  ),
//                  Container(
//                    height: 1,
//                    margin: EdgeInsets.only(top: 2, right: 39),
//                    decoration: BoxDecoration(
//                      color: Color.fromARGB(255, 232, 232, 232),
//                    ),
//                    child: Container(),
//                  ),
//                  Align(
//                    alignment: Alignment.topLeft,
//                    child: Container(
//                      margin: EdgeInsets.only(left: 29, top: 19),
//                      child: Text(
//                        "Trending Posts",
//                        textAlign: TextAlign.left,
//                        style: TextStyle(
//                          color: AppColors.primaryText,
//                          fontFamily: "Montserrat",
//                          fontWeight: FontWeight.w600,
//                          fontSize: 20,
//                        ),
//                      ),
//                    ),
//                  ),
//                  Align(
//                    alignment: Alignment.topCenter,
//                    child: Container(
//                      width: 359,
//                      //height: 89,
//                      margin: EdgeInsets.only(top: 27),
//                      child: FlatButton(
//                        onPressed: ()=> this.onGroupPressed(context), //TODO add push navigator
//                        color: Color.fromARGB(0, 0, 0, 0),
//                        shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.all(Radius.circular(0)),
//                        ),
//                        textColor: Color.fromARGB(255, 0, 0, 0),
//                        padding: EdgeInsets.all(0),
//                        child: Text(
//                          "",
//                          textAlign: TextAlign.left,
//                          style: TextStyle(
//                            color: Color.fromARGB(255, 0, 0, 0),
//                            fontWeight: FontWeight.w400,
//                            fontSize: 12,
//                          ),
//                        ),
//                      ),
//                    ),
//                  ),
//                  Align(
//                    alignment: Alignment.topCenter,
//                    child: Container(
//                      width: 359,
//                      height: 89,
//                      margin: EdgeInsets.only(top: 26),
//                      child: Image.asset(
//                        "assets/images/group-7.png",
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  ),
//                  Align(
//                    alignment: Alignment.topCenter,
//                    child: Container(
//                      width: 359,
//                      height: 89,
//                      margin: EdgeInsets.only(top: 26),
//                      child: Image.asset(
//                        "assets/images/group-6.png",
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  ),
//                  Spacer(),
//                  Align(
//                    alignment: Alignment.topCenter,
//                    child: Container(
//                      width: 359,
//                      height: 89,
//                      margin: EdgeInsets.only(bottom: 26),
//                      child: Image.asset(
//                        "assets/images/group.png",
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  ),
//                  Container(
//                    height: 93,
//                    margin: EdgeInsets.only(left: 1, right: 39),
//                    child: Stack(
//                      alignment: Alignment.center,
//                      children: [
//                        Positioned(
//                          bottom: 4,
//                          child: Image.asset(
//                            "assets/images/group-3.png",
//                            fit: BoxFit.cover,
//                          ),
//                        ),
//                        Positioned(
//                          left: 0,
//                          right: 0,
//                          bottom: 0,
//                          child: Container(
//                            height: 78,
//                            decoration: BoxDecoration(
//                              color: AppColors.secondaryBackground,
//                              boxShadow: [
//                                Shadows.primaryShadow,
//                              ],
//                            ),
//                            child: Container(),
//                          ),
//                        ),
//                        Positioned(
//                          left: 42,
//                          right: 42,
//                          bottom: 25,
//                          child: Row(
//                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                            children: [
//                              Align(
//                                alignment: Alignment.bottomLeft,
//                                child: Container(
//                                  width: 33,
//                                  height: 42,
//                                  child: Column(
//                                    crossAxisAlignment: CrossAxisAlignment.stretch,
//                                    children: [
//                                      Container(
//                                        height: 24,
//                                        margin: EdgeInsets.symmetric(horizontal: 3),
//                                        child: Image.asset(
//                                          "assets/images/icon-action-home-24px.png",
//                                          fit: BoxFit.none,
//                                        ),
//                                      ),
//                                      Spacer(),
//                                      Text(
//                                        "Home",
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 0, 111, 173),
//                                          fontFamily: "Montserrat",
//                                          fontWeight: FontWeight.w600,
//                                          fontSize: 10,
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              ),
//                              Align(
//                                alignment: Alignment.bottomLeft,
//                                child: Container(
//                                  width: 31,
//                                  height: 42,
//                                  margin: EdgeInsets.only(left: 42),
//                                  child: Column(
//                                    crossAxisAlignment: CrossAxisAlignment.stretch,
//                                    children: [
//                                      Container(
//                                        height: 24,
//                                        margin: EdgeInsets.only(left: 3, right: 4),
//                                        decoration: BoxDecoration(
//                                          color: AppColors.accentElement,
//                                          borderRadius: Radii.k12pxRadius,
//                                        ),
//                                        child: Container(),
//                                      ),
//                                      Spacer(),
//                                      Text(
//                                        "Saved",
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 131, 131, 131),
//                                          fontFamily: "Montserrat",
//                                          fontWeight: FontWeight.w600,
//                                          fontSize: 10,
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              ),
//                              Spacer(),
//                              Align(
//                                alignment: Alignment.bottomLeft,
//                                child: Container(
//                                  width: 67,
//                                  height: 42,
//                                  margin: EdgeInsets.only(right: 26),
//                                  child: Column(
//                                    crossAxisAlignment: CrossAxisAlignment.stretch,
//                                    children: [
//                                      Align(
//                                        alignment: Alignment.topCenter,
//                                        child: Container(
//                                          width: 24,
//                                          height: 24,
//                                          decoration: BoxDecoration(
//                                            color: AppColors.accentElement,
//                                            borderRadius: Radii.k12pxRadius,
//                                          ),
//                                          child: Container(),
//                                        ),
//                                      ),
//                                      Spacer(),
//                                      Text(
//                                        "Notifications",
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 131, 131, 131),
//                                          fontFamily: "Montserrat",
//                                          fontWeight: FontWeight.w600,
//                                          fontSize: 10,
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              ),
//                              Align(
//                                alignment: Alignment.bottomLeft,
//                                child: Container(
//                                  width: 31,
//                                  height: 42,
//                                  child: Column(
//                                    crossAxisAlignment: CrossAxisAlignment.stretch,
//                                    children: [
//                                      Container(
//                                        height: 24,
//                                        margin: EdgeInsets.only(left: 3, right: 4),
//                                        decoration: BoxDecoration(
//                                          color: AppColors.accentElement,
//                                          borderRadius: Radii.k12pxRadius,
//                                        ),
//                                        child: Container(),
//                                      ),
//                                      Spacer(),
//                                      Text(
//                                        "Saved",
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 131, 131, 131),
//                                          fontFamily: "Montserrat",
//                                          fontWeight: FontWeight.w600,
//                                          fontSize: 10,
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
//            Positioned(
//              bottom: 25,
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.stretch,
//                children: [
//                  Container(
//                    height: 24,
//                    decoration: BoxDecoration(
//                      color: AppColors.accentElement,
//                      borderRadius: Radii.k12pxRadius,
//                    ),
//                    child: Container(),
//                  ),
//                  Spacer(),
//                  Container(
//                    margin: EdgeInsets.only(left: 1),
//                    child: Text(
//                      "Post",
//                      textAlign: TextAlign.center,
//                      style: TextStyle(
//                        color: Color.fromARGB(255, 131, 131, 131),
//                        fontFamily: "Montserrat",
//                        fontWeight: FontWeight.w600,
//                        fontSize: 10,
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//
//
//
//
//
//
//
//
//
//    Scaffold(
//        appBar: AppBar(
//          title: Text('home'),
//        ),
//        body: FlatButton(
//          child: Text('Sign Out'),
//          onPressed: (){
//            AuthService().signOut();
//          },
//        )
//    );
//  }
//}
//
