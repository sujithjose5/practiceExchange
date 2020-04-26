/*
*  post_widget.dart
*  Hacknow sketch
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:practiceexchange/values/values.dart';


class PostWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 113,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 113,
                      decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 15,
                            height: 29,
                            margin: EdgeInsets.only(left: 22, top: 55),
                            child: Image.asset(
                              "assets/images/path-5.png",
                              fit: BoxFit.none,
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(top: 60, right: 28),
                            child: Text(
                              "SEND",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.secondaryText,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 113,
                      decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 15,
                            height: 29,
                            margin: EdgeInsets.only(left: 22, top: 55),
                            child: Image.asset(
                              "assets/images/path-5.png",
                              fit: BoxFit.none,
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(top: 60, right: 31),
                            child: Text(
                              "NEXT",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.secondaryText,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
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
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 27, top: 32),
                child: Text(
                  "Add your title",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 27, top: 68),
                child: Text(
                  "Your text post (optional)",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              height: 1,
              margin: EdgeInsets.only(top: 278),
              decoration: BoxDecoration(
                color: AppColors.primaryElement,
              ),
              child: Container(),
            ),
            Container(
              height: 18,
              margin: EdgeInsets.only(left: 28, top: 13, right: 29),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 20,
                      height: 10,
                      margin: EdgeInsets.only(top: 5),
                      child: Image.asset(
                        "assets/images/group-2.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 19,
                      height: 15,
                      margin: EdgeInsets.only(left: 54, top: 2),
                      child: Image.asset(
                        "assets/images/icon-editor-format-list-bulleted-24px.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 18,
                      height: 18,
                      child: Image.asset(
                        "assets/images/group-5.png",
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
    );
  }
}