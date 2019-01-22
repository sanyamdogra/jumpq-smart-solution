import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Profile Page'),
      ),
     body:Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(50),
            ),
            CircleAvatar(
              radius: 80.0,
              
              child: Image.asset('images/dp1.jpg',scale: 2.0,),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Text('Sanyam Dogra',style: TextStyle(color: Colors.blue,
            fontSize: 25.0),
            ),
            Text('sdlord07@gmail.com',style: TextStyle(color: Colors.cyan,
            fontSize: 15.0),
            ),
          ],
        ),
      ), 
    );
  }
}