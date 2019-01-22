import 'package:amity_hack/Drawer/object_detection.dart';
import 'package:amity_hack/Drawer/order_history.dart';

import 'package:amity_hack/login_page.dart';
import 'package:amity_hack/my_account.dart';
import 'package:amity_hack/pay.dart';
import 'package:amity_hack/payment.dart';
import 'package:amity_hack/payment_green.dart';
import 'package:amity_hack/scanner.dart';
import 'package:amity_hack/settings.dart';
import 'package:amity_hack/splash_screen.dart';
import 'package:amity_hack/walkthorugh_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(accentColor: Colors.white,
        
        
        fontFamily: 'ProductSans',
        
      ),
      routes: <String,WidgetBuilder>{
        '/walkthrough':(BuildContext context)=>TestScreen(),
        '/orderhistory':(BuildContext context)=>OrderHistory(),
        '/objectdetection':(BuildContext context)=>ObjectDetection(),
        '/scanner':(BuildContext context)=>StatsPage(),
        '/pay':(BuildContext context)=>Pay(),
        '/payment':(BuildContext context)=>Payment(),
         '/splashscreen':(BuildContext context)=>SplashScreen(),
         '/paymentgreen':(BuildContext context)=>PaymentGreen(),
         '/profilepage':(BuildContext context)=>ProfilePage(),
         '/settings':(BuildContext context)=>Settings(),
        
        
      },
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
