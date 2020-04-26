import 'package:flutter/material.dart';
import 'package:practiceexchange/values/values.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
        backgroundColor: Color.fromRGBO(0, 111, 173, 1),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 27, top: 32),
                child: Text(
                  "Add your title", //TODO change to form field
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
                  "Your text post (optional)", //TODO change to form field
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
          ],
        ),
      ),
    );
  }
}
