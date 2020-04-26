import 'package:flutter/material.dart';
import 'package:practiceexchange/values/values.dart';


class ViewItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 137,
      height: 70,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            left: 0,
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
            top: 27,
            child: Image.asset(
              "assets/images/shape-2.png",
              fit: BoxFit.none,
            ),
          ),
        ],
      ),
    );
  }
}