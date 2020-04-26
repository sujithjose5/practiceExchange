
import 'package:flutter/material.dart';
import 'package:practiceexchange/values/values.dart';


class ViewTwoItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 137,
      height: 70,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: Container(
              width: 136,
              height: 69,
              decoration: BoxDecoration(
                color: AppColors.primaryBackground,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Container(),
            ),
          ),
          Positioned(
            left: 9,
            top: 28,
            child: Image.asset(
              "assets/images/shape-3.png",
              fit: BoxFit.none,
            ),
          ),
        ],
      ),
    );
  }
}