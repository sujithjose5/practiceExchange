import 'package:practiceexchange/models/user.dart';
import 'package:practiceexchange/screens/authenticate/authenticate.dart';
//import 'package:practiceexchange/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    user != null ? print('User ID = ${user.uid}') : print (null);

    // return either the Home or Authenticate widget
    if (user == null){
      return Authenticate();
    } else {
      return Authenticate(); //TODO home
    }

  }
}


//import 'package:brew_crew/models/user.dart';
//import 'package:brew_crew/screens/authenticate/authenticate.dart';
//import 'package:brew_crew/screens/home/home.dart';
//import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
//
//class Wrapper extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//
//    final user = Provider.of<User>(context);
//    print('stream data: $user');
//    //return Home or Authenticate widget based on current authenticate state
//    if (user == null) {
//      return Authenticate();
//    } else {
//      return Home();
//    }
//  }
//}
