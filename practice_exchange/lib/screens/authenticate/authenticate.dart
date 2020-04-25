import 'package:practiceexchange/screens/authenticate/signup.dart';
import 'package:practiceexchange/screens/authenticate/signin.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = false;
  void toggleView(){
    //print(showSignIn.toString());
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleView:  toggleView);
    } else {
      return SignUp(toggleView:  toggleView);
    }
  }
}



//import 'package:flutter/material.dart';
//import 'package:brew_crew/screens/authenticate/sign_in.dart';
//import 'package:brew_crew/screens/authenticate/register.dart';
//
//class Authenticate extends StatefulWidget {
//  @override
//  _AuthenticateState createState() => _AuthenticateState();
//}
//
//class _AuthenticateState extends State<Authenticate> {
//
//  bool showSignIn = true;
//
//  void toggleAuthenticate () {
//    setState(() {
//      showSignIn = ! showSignIn;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    if (showSignIn) {
//      return SignIn(toggleAuthenticate: toggleAuthenticate);
//    } else {
//      return Register(toggleAuthenticate: toggleAuthenticate);
//    }
//  }
//}
