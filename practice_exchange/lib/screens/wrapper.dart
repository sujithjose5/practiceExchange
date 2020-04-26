import 'package:practiceexchange/models/user.dart';
import 'package:practiceexchange/screens/authenticate/authenticate.dart';
import 'package:practiceexchange/screens/home.dart';
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
      return HomeScreen();
    }
  }
}


