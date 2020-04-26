import 'package:flutter/material.dart';
import 'package:practiceexchange/home_widget/view_item_widget.dart';
import 'package:practiceexchange/home_widget/view_three_item_widget.dart';
import 'package:practiceexchange/home_widget/view_two_item_widget.dart';
import 'package:practiceexchange/read_post_widget/read_post_widget.dart';
import 'package:practiceexchange/values/values.dart';


class HomeWidget extends StatelessWidget {
  
  void onGroupPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ReadPostWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              left: -1,
              top: 0,
              right: -39,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 113,
                    margin: EdgeInsets.only(left: 1, right: 39),
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
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          left: 27,
                          top: 58,
                          right: 26,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 104,
                                  height: 38,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(3.5)),
                                  ),
                                  child: Container(),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 27,
                                  height: 27,
                                  margin: EdgeInsets.only(top: 7),
                                  child: Image.asset(
                                    "assets/images/shape-4.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 45,
                          top: 71,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 48,
                                  height: 13,
                                  child: Image.asset(
                                    "assets/images/shape-5.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 8,
                                  height: 4,
                                  margin: EdgeInsets.only(left: 17, top: 5),
                                  child: Image.asset(
                                    "assets/images/path-3.png",
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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 29, top: 27),
                      child: Text(
                        "Topics for you",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 425,
                      height: 90,
                      margin: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 90,
                          childAspectRatio: 0.65693,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) => ViewItemWidget(),
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    margin: EdgeInsets.only(top: 2, right: 39),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 232, 232, 232),
                    ),
                    child: Container(),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 29, top: 19),
                      child: Text(
                        "Trending Posts",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 359,
                      height: 89,
                      margin: EdgeInsets.only(top: 27),
                      child: FlatButton(
                        onPressed: (){},// => this.onGroupPressed(context),
                        color: Color.fromARGB(0, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 359,
                      height: 89,
                      margin: EdgeInsets.only(top: 26),
                      child: Image.asset(
                        "assets/images/group-7.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 359,
                      height: 89,
                      margin: EdgeInsets.only(top: 26),
                      child: Image.asset(
                        "assets/images/group-6.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 359,
                      height: 89,
                      margin: EdgeInsets.only(bottom: 26),
                      child: Image.asset(
                        "assets/images/group.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 93,
                    margin: EdgeInsets.only(left: 1, right: 39),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          bottom: 4,
                          child: Image.asset(
                            "assets/images/group-3.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 78,
                            decoration: BoxDecoration(
                              color: AppColors.secondaryBackground,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                            ),
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          left: 42,
                          right: 42,
                          bottom: 25,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 33,
                                  height: 42,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Container(
                                        height: 24,
                                        margin: EdgeInsets.symmetric(horizontal: 3),
                                        child: Image.asset(
                                          "assets/images/icon-action-home-24px.png",
                                          fit: BoxFit.none,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "Home",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 111, 173),
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 31,
                                  height: 42,
                                  margin: EdgeInsets.only(left: 42),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Container(
                                        height: 24,
                                        margin: EdgeInsets.only(left: 3, right: 4),
                                        decoration: BoxDecoration(
                                          color: AppColors.accentElement,
                                          borderRadius: Radii.k12pxRadius,
                                        ),
                                        child: Container(),
                                      ),
                                      Spacer(),
                                      Text(
                                        "Saved",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 131, 131, 131),
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 67,
                                  height: 42,
                                  margin: EdgeInsets.only(right: 26),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            color: AppColors.accentElement,
                                            borderRadius: Radii.k12pxRadius,
                                          ),
                                          child: Container(),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "Notifications",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 131, 131, 131),
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 31,
                                  height: 42,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Container(
                                        height: 24,
                                        margin: EdgeInsets.only(left: 3, right: 4),
                                        decoration: BoxDecoration(
                                          color: AppColors.accentElement,
                                          borderRadius: Radii.k12pxRadius,
                                        ),
                                        child: Container(),
                                      ),
                                      Spacer(),
                                      Text(
                                        "Saved",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 131, 131, 131),
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
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
                ],
              ),
            ),
            Positioned(
              bottom: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 24,
                    decoration: BoxDecoration(
                      color: AppColors.accentElement,
                      borderRadius: Radii.k12pxRadius,
                    ),
                    child: Container(),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(left: 1),
                    child: Text(
                      "Post",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 131, 131, 131),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
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