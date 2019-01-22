import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor:Colors.cyan,
        title: Text('Order History'),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(child: Icon(Icons.add_shopping_cart,size:100.0,color: Colors.cyan,),backgroundColor: Color(0xFFdbf1f2),radius: 100.0,),
            Padding(padding: EdgeInsets.only(top: 20.0),),
            Text('Order history empty!',style: TextStyle(fontSize: 18.0,color: Colors.white),),
          ],
        ),
        ),
               
      
    );
  }
}