
import 'package:flutter/material.dart';
import 'package:practiceexchange/values/values.dart';


class ViewThreeItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 137,
      height: 70,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Positioned(
            right: 0,
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
            top: 27,
            right: 69,
            child: Image.asset(
              "assets/images/shape.png",
              fit: BoxFit.none,
            ),
          ),
        ],
      ),
    );
  }
}