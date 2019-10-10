import 'dart:async';

import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class StatsPage extends StatefulWidget {
  @override
  _StatsPageState createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  String result = 'Your cart is empty';
  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult;
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        result = 'Camera Permission Denied';
      } else {
        setState(() {
          result = 'Unknown Error $ex';
        });
      }
    } on FormatException {
      setState(() {
        result = 'Scanning not complete';
      });
    } catch (ex) {
      setState(() {
        result = 'Unknown Error $ex';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //  var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      
      
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        onPressed: _scanQR,
        child: Icon(Icons.camera_alt,color: Colors.white,),
        backgroundColor: Color(0xFFF8C436),

      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250,
                width: double.infinity,
                color: Color(0xFFF8C436),
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
                  'Scan the items ',
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
                  "and add them in cart",
                  style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 25,
                    color: Colors.black87,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 150,
                      ),
                      Container(
                        height: 155,
                        width: 140,
                        color: Colors.transparent,
                        child: Center(
                          child: Image.asset(
                            'images/hopqblack.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'YOUR LIST',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            height: 530,
            width: double.infinity,
            color:  Colors.white,
            child: Column(
              children: <Widget>[
                
                itemList(context, result),
                SizedBox(height: 390,),
              InkWell(
                onTap: (){ Navigator.of(context).pushNamed('/pay');},
                              child: Container(
                                height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8C436),
                    borderRadius: BorderRadius.circular(30),
                    
                  ),
                 child: Center(child: Text('Pay',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),),
                ),
              ),

              ],
            ),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFFF8C436),
        centerTitle: true,
        title: Text('Your Cart'),
        actions: <Widget>[
         
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

Widget itemList(
  BuildContext context,
  String title,
) {
  bool onticked = false;
  var deviceSize = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.only(left: 15, top: 15, right: 15),
    child: Container(
      height: 40,
      child: Center(
        child: Row(
          children: <Widget>[
            SizedBox(width: 30,),
            Container(
             
              child:  Text(title,maxLines: 1,),
            ),
            SizedBox(
              width: deviceSize.width/2.5,
            ),
            Checkbox(
              value: onticked,
              activeColor: Colors.cyan,
              onChanged: (bool val) {},
            ),
          ],
        ),
      ),
    ),
  );
}
