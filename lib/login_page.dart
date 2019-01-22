import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                  child: Text(
                    'Hello',
                    style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(17, 180, 0, 0),
                  child: Text(
                    'There',
                    style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(230, 180, 0, 0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color:  Color(0xFFF8C436)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(300, 145, 0, 0),
                  color: Colors.transparent,
                  child: Image.asset('images/hopqblackyellow.png',),
                ),
              ],
            ),
            
          ),
          Container(
            padding: EdgeInsets.only(top: 85.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent))),
                ),
                SizedBox(height: 20.0),
                TextField(
                  obscureText: true,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent))),
                ),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.only(top: 10.0, left: 300.0),
                  child: InkWell(
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
                Container(
                  height: 50.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/walkthrough');
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Color(0xFFF8C436),
                      child: Center(
                        child: Text('LOGIN',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 50.0,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: ImageIcon(AssetImage('images/facebook.png')),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Center(
                    child: Text('Log in  with Facebook',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'New to JumpQ?',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5.0),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/signup');
                    },
                    child: Text('Sign up',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color:  Color(0xFFF8C436),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
