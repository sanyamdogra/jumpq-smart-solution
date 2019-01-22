import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
   @override
   void initState() {
      // TODO: implement initState
      super.initState();
      Timer(Duration(seconds: 3), (){ Navigator.of(context).pushReplacementNamed('/paymentgreen');});
    }
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM').format(now);

    return Scaffold(
      backgroundColor: Color(0xFF0A79DF),
      appBar: AppBar(
        backgroundColor: Color(0xFF0A79DF),
        centerTitle: true,
        title: Text('Invoice'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 112),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                height: deviceSize.height / 1.29,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Invoice DateTime:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Bill No.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              formattedDate,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                              maxLines: 1,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '73ab2',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 50,
                      width: deviceSize.width,
                      color: Color(0xFFF8C436),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 25),
                          Text(
                            'Items',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          SizedBox(
                            width: deviceSize.width / 1.9,
                          ),
                          Text(
                            'Amount',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    itemDetails(context, 'Lays', '90g', 1, 35),
                    
                    SizedBox(height: deviceSize.height/3,),
                    Container(
                      
                      height: 50,
                      width: deviceSize.width,
                      color: Color(0xFFF8C436),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 25),
                          Text(
                            'Total ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                         
                          Text(
                            'Amount',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                           SizedBox(width: deviceSize.width/2.5,),
                          Text(
                            '₹35.0',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
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

Widget itemDetails(BuildContext context, String title, String weight,
    int quantity, double price) {
  var deviceSize = MediaQuery.of(context).size;
  var calc_price = quantity * price;
  return Padding(
    padding: EdgeInsets.only(left: 10, right: 10),
    child: Container(
      height: 50,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$title $weight',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '$quantity x  ₹$price',
                    style: TextStyle(),
                  ),
                ],
              ),
              SizedBox(
                width: deviceSize.width / 2.2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      height: 30,
                      width: 70,
                      child: Center(
                          child: Text(
                        '₹$calc_price',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ))),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
