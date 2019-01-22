import 'package:amity_hack/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_walkthrough/flutter_walkthrough.dart';
import 'package:flutter_walkthrough/walkthrough.dart';

class TestScreen extends StatelessWidget {
  /*here we have a list of walkthroughs which we want to have, 
  each walkthrough have a title,content and an icon.
  */
  final List<Walkthrough> list = [
    Walkthrough(
      title: 'SCAN',
      content: 'Simply scan your product on the app while shopping.',
      imageIcon: Icons.search,imagecolor: Color(0xFFF8C436),
    ),
    Walkthrough(
      title: "PAY",
      content: "Pay online through your preffered method.",
      imageIcon: Icons.monetization_on,imagecolor: Color(0xFFF8C436),
    ),
    Walkthrough(
      title: "GO",
      content: " Breeze through that billing counter without standing in long queue.",
      imageIcon: Icons.verified_user,imagecolor: Color(0xFFF8C436),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    //here we need to pass the list and the route for the next page to be opened after this.
    return new IntroScreen(
      list,
      new MaterialPageRoute(builder: (context) => new HomePage()),
    );
  }
}
