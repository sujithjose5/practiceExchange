import 'package:flutter/material.dart';

/*
*  read_post_widget.dart
*  Hacknow sketch
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:practiceexchange/screens/home.dart';
import 'package:practiceexchange/values/values.dart';

//import '../screens/home.dart';

class ReadPost extends StatelessWidget {
  bool _saved = false;
  void onGroup4Pressed(BuildContext context) {
    Navigator.pop(context);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage())); //HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(' '),
        backgroundColor: Color.fromRGBO(0, 111, 173, 1),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  _saved = !_saved; //TODO not working
                },
                icon: _saved
                    ? Icon(Icons.bookmark)
                    : Icon(Icons.bookmark_border)),
          ),
        ],
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: ListView(
          children: [
//            Container(
//              height: 113,
//              child: FlatButton(
//                onPressed: () => this.onGroup4Pressed(context),
//                color: Color.fromARGB(0, 0, 0, 0),
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.all(Radius.circular(0)),
//                ),
//                textColor: Color.fromARGB(255, 0, 0, 0),
//                padding: EdgeInsets.all(0),
//                child: Text(
//                  "",
//                  textAlign: TextAlign.left,
//                  style: TextStyle(
//                    color: Color.fromARGB(255, 0, 0, 0),
//                    fontWeight: FontWeight.w400,
//                    fontSize: 12,
//                  ),
//                ),
//              ),
//            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 267,
                height: 32,
                margin: EdgeInsets.only(left: 27, top: 36),
                child: Row(
                  children: [
                    Container(
                      width: 33,
                      height: 32,
                      child: Image.asset(
                        "assets/images/naomi-2.png",
                        fit: BoxFit.none,
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        "Firstname Lastname | Organization",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 92, 92, 92),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    Container(
                      width: 3,
                      height: 3,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 92, 92, 92),
                        borderRadius: BorderRadius.all(Radius.circular(1.5)),
                      ),
                      child: Container(),
                    ),
                    Text(
                      "4d",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 92, 92, 92),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w800,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 100,
                height: 24,
                margin: EdgeInsets.only(left: 23, top: 9),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 100,
                        height: 24,
                        decoration: BoxDecoration(
                          color: AppColors.primaryElement,
                          borderRadius: BorderRadius.all(Radius.circular(11)),
                        ),
                        child: Container(),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 5,
                      child: Text(
                        "Best practices",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 47, 47, 47),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 315,
                height: 88,
                margin: EdgeInsets.only(left: 22, top: 9),
                child: Image.asset(
                  "assets/images/shape-7.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 370,
                height: 370,
                margin: EdgeInsets.only(top: 30),
                child: Image.asset(
                  "assets/images/shape-6.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 184,
                height: 20,
                margin: EdgeInsets.only(left: 28, bottom: 42),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 53,
                        height: 16,
                        margin: EdgeInsets.only(bottom: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 23,
                              height: 15,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    left: 8,
                                    top: 8,
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryElement,
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Image.asset(
                                      "assets/images/path-4.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: EdgeInsets.only(right: 1),
                                child: Text(
                                  "142",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 92, 92),
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 39,
                        height: 20,
                        margin: EdgeInsets.only(left: 21),
                        child: Row(
                          children: [
                            Container(
                              width: 15,
                              height: 17,
                              child: Image.asset(
                                "assets/images/path-2.png",
                                fit: BoxFit.none,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "34",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 92, 92, 92),
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w800,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 34,
                        height: 16,
                        margin: EdgeInsets.only(left: 37, bottom: 4),
                        child: Row(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              child: Image.asset(
                                "assets/images/oval.png",
                                fit: BoxFit.none,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(left: 6, right: 1),
                                child: Text(
                                  "14",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 92, 92),
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 61,
              margin: EdgeInsets.only(bottom: 21),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 61,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 232, 232, 232),
                      ),
                      child: Container(),
                    ),
                  ),
                  Positioned(
                    left: 28,
                    bottom: 21,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Discussion",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: AppColors.accentText,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 8,
                            height: 4,
                            margin: EdgeInsets.only(left: 3, bottom: 6),
                            child: Image.asset(
                              "assets/images/path.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 153,
              margin: EdgeInsets.only(bottom: 14),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 267,
                            height: 32,
                            margin: EdgeInsets.only(left: 27),
                            child: Row(
                              children: [
                                Container(
                                  width: 33,
                                  height: 32,
                                  child: Image.asset(
                                    "assets/images/naomi-2.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: Text(
                                    "Firstname Lastname | Organization",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 92, 92, 92),
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 3,
                                  height: 3,
                                  margin: EdgeInsets.only(right: 5),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 92, 92, 92),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(1.5)),
                                  ),
                                  child: Container(),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 1),
                                  child: Text(
                                    "3h",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 92, 92, 92),
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w800,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 358,
                            margin: EdgeInsets.only(top: 14),
                            child: Text(
                              "Thanks for posting! What do you recomment that I do to implement this here in the states?",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 60,
                            height: 16,
                            margin: EdgeInsets.only(right: 60, bottom: 17),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    width: 38,
                                    height: 16,
                                    margin: EdgeInsets.only(right: 21),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 15,
                                            margin: EdgeInsets.only(right: 6),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Positioned(
                                                  left: 8,
                                                  top: 8,
                                                  child: Container(
                                                    width: 7,
                                                    height: 7,
                                                    decoration: BoxDecoration(
                                                      color: AppColors
                                                          .primaryElement,
                                                    ),
                                                    child: Container(),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  right: 0,
                                                  child: Image.asset(
                                                    "assets/images/path-4.png",
                                                    fit: BoxFit.none,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            margin: EdgeInsets.only(right: 1),
                                            child: Text(
                                              "5",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 92, 92, 92),
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w800,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    width: 1,
                                    height: 7,
                                    margin: EdgeInsets.only(bottom: 1),
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryElement,
                                    ),
                                    child: Container(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 10,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 232, 232, 232),
                          ),
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 31,
                    bottom: 27,
                    child: Image.asset(
                      "assets/images/icon-content-reply-24px.png",
                      fit: BoxFit.none,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 212,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 59,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 267,
                                  height: 32,
                                  margin: EdgeInsets.only(left: 27),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 33,
                                        height: 32,
                                        child: Image.asset(
                                          "assets/images/naomi-2.png",
                                          fit: BoxFit.none,
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        margin: EdgeInsets.only(right: 5),
                                        child: Text(
                                          "Firstname Lastname | Organization",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 92, 92, 92),
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 3,
                                        height: 3,
                                        margin: EdgeInsets.only(right: 5),
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 92, 92, 92),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(1.5)),
                                        ),
                                        child: Container(),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 3),
                                        child: Text(
                                          "1d",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 92, 92, 92),
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w800,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: EdgeInsets.only(left: 28, top: 14),
                                  child: Text(
                                    "Question…",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 38,
                                  height: 16,
                                  margin:
                                      EdgeInsets.only(right: 82, bottom: 17),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          height: 15,
                                          margin: EdgeInsets.only(right: 6),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Positioned(
                                                left: 8,
                                                top: 8,
                                                child: Container(
                                                  width: 7,
                                                  height: 7,
                                                  decoration: BoxDecoration(
                                                    color: AppColors
                                                        .primaryElement,
                                                  ),
                                                  child: Container(),
                                                ),
                                              ),
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                right: 0,
                                                child: Image.asset(
                                                  "assets/images/path-4.png",
                                                  fit: BoxFit.none,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(right: 1),
                                          child: Text(
                                            "3",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 92, 92, 92),
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w800,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 232, 232, 232),
                                ),
                                child: Container(),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 31,
                          bottom: 27,
                          child: Image.asset(
                            "assets/images/icon-content-reply-24px.png",
                            fit: BoxFit.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 87,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryBackground,
                      ),
                      child: Container(),
                    ),
                  ),
                  Positioned(
                    bottom: 24,
                    child: Container(
                      width: 358,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 221, 221, 221),
                        border: Border.fromBorderSide(Borders.secondaryBorder),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 13),
                            child: Text(
                              "Add comment",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 92, 92, 92),
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
