import 'package:flutter/material.dart';
import 'package:practiceexchange/services/auth.dart';

import '../services/auth.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: FlatButton(
        child: Text('Sign Out'),
        onPressed: (){
          AuthService().signOut();
        },
      )
    );
  }
}
