import 'package:flutter/material.dart';
import 'dart:math';

class Pay extends StatefulWidget {
  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    

final _random = new Random();

/**
 * Generates a positive random integer uniformly distributed on the range
 * from [min], inclusive, to [max], exclusive.
 */
int next(int min, int max) => min + _random.nextInt(max - min);
int generate=next(20, 100);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Payment'),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250,
                width: double.infinity,
                color: Color(0xFF0A79DF),
              ),
              Positioned(
                bottom: 50,
                right: 100,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: Color(0xFFFEE16B).withOpacity(0.4),
                  ),
                ),
              ),
              Positioned(
                bottom: 100,
                left: 240,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: Color(0xFFFEE57F).withOpacity(0.2),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 60),
                child: Text(
                  'Total to Pay',
                  style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 100),
                child: Text(
                  "₹$generate",
                  style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 110,
                    color: Colors.white,
                  ),
                ),
              ),
              
            ],
          ),
          SizedBox(height: 150,),
           Container(
             padding: EdgeInsets.only(left: 40,right: 40),
                  height: 50.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/splashscreen');
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Color(0xFF0A79DF),
                      child: Center(
                        child: Text('Pay using Credit/Debit Card',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70,),
          InkWell(
            onTap:(){
               Navigator.of(context).pushNamed('/splashscreen');
            },
                      child: Container(
              padding: EdgeInsets.only(left: 40, right: 40),
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
                      child: ImageIcon(AssetImage('images/gpay.png',),size: 85,),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Center(
                      child: Text('Use Google Pay',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
          ),SizedBox(height: 20,),
          InkWell(
            onTap:(){
               Navigator.of(context).pushNamed('/splashscreen');
            },
                      child: Container(
              padding: EdgeInsets.only(left: 40, right: 40),
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
                      child: ImageIcon(AssetImage('images/paytm.png',),size: 85,),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Center(
                      child: Text('Use PayTM',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
          ),SizedBox(height: 20,),
          InkWell(
            onTap:(){
              Navigator.of(context).pushNamed('/splashscreen');
            },
                      child: Container(
              padding: EdgeInsets.only(left: 40, right: 40),
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
                      child: ImageIcon(AssetImage('images/bhimupi.png',),size: 85,),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Center(
                      child: Text('Use Bhim UPI',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}
