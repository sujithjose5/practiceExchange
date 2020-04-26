import 'package:flutter/material.dart';
import 'package:practiceexchange/values/values.dart';
import 'package:practiceexchange/values/borders.dart';
import 'package:practiceexchange/values/radii.dart';
import 'package:practiceexchange/values/colors.dart';
import 'package:practiceexchange/services/auth.dart';

class SignUp extends StatefulWidget {
  final Function toggleView;
  SignUp({this.toggleView});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final AuthService _auth = AuthService();

  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String email = '';
  String password = '';
  String message = '';

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
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 243,
                height: 33,
                margin: EdgeInsets.only(left: 91, top: 178),
                child: Image.asset(
                  "assets/images/new-americares-logo-as-of-912.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(top: 19, right: 50),
                child: Text(
                  "Practice Exchange",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 94),
                child: Text(
                  "Sign up with email",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(top: 67),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            //decoration: textInputDecoration.copyWith(hintText: 'Email'),
                            validator: (val) =>
                                val.isEmpty ? 'Enter an email' : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                          ),
                          SizedBox(height: 20.0),
                          TextFormField(
                            //decoration: textInputDecoration.copyWith(hintText: 'Password'),
                            obscureText: true,
                            validator: (val) => val.length < 6
                                ? 'Enter a password 6+ chars long'
                                : null,
                            onChanged: (val) {
                              setState(() => password = val);
                            },
                          ),
                        ],
                      ))
//                child: Text(
//                  "Your full name",
//                  textAlign: TextAlign.center,
//                  style: TextStyle(
//                    color: AppColors.secondaryText,
//                    fontFamily: "Montserrat",
//                    fontWeight: FontWeight.w500,
//                    fontSize: 14,
//                  ),
//                ),
                  ),
            ),
//            Align(
//              alignment: Alignment.topLeft,
//              child: Container(
//                width: 370,
//                height: 1,
//                margin: EdgeInsets.only(left: 20, top: 19),
//                decoration: BoxDecoration(
//                  color: AppColors.primaryElement,
//                ),
//                child: Container(),
//              ),
//            ),
//            Align(
//              alignment: Alignment.topCenter,
//              child: Container(
//                margin: EdgeInsets.only(top: 48),
//                child: Text(
//                  "Your email",
//                  textAlign: TextAlign.center,
//                  style: TextStyle(
//                    color: AppColors.secondaryText,
//                    fontFamily: "Montserrat",
//                    fontWeight: FontWeight.w500,
//                    fontSize: 14,
//                  ),
//                ),
//              ),
//            ),
//            Align(
//              alignment: Alignment.topLeft,
//              child: Container(
//                width: 370,
//                height: 1,
//                margin: EdgeInsets.only(left: 20, top: 19),
//                decoration: BoxDecoration(
//                  color: AppColors.primaryElement,
//                ),
//                child: Container(),
//              ),
//            ),
            Container(
              height: 44,
              margin: EdgeInsets.only(left: 20, top: 47, right: 20),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryElement,
                        borderRadius: Radii.k22pxRadius,
                      ),
                      child: Container(),
                    ),
                  ),
                  Positioned(
                    //top: 0,
                    child: FlatButton(
                      child: Text(
                        "Create Account",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.accentText,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          setState(() => loading = true);
                          dynamic result = await _auth
                              .registerWithEmailAndPassword(email, password);

                          if (result == null) {
                            setState(() {
                              loading = false;
                              message = 'Please supply a valid email';
                            });
                          }
                        }
                      },
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
