import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color(0xFFF8C436),  
        centerTitle: true,
        title: Text('JumpQ'),
        actions: <Widget>[
          
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
               Navigator.of(context).pushNamed('/scanner');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFF8C436),
                ),
                accountName: Text(
                  'Sanyam Dogra',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                accountEmail: Text('sdlord07@gmail.com'),
                currentAccountPicture: InkWell(
                  onTap: () {Navigator.of(context).pushNamed('/profilepage');},
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/dp1.jpg'),
                  ),
                )),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(30, 5, 30, 10),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 18.0),
              ),
              onTap: () => Navigator.of(context).pop(),
              trailing: Icon(
                Icons.home,
                color: Colors.cyan,
                size: 30.0,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(30, 5, 30, 10),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/profilepage');
              },
              title: Text(
                'My Account',
                style: TextStyle(fontSize: 18.0),
              ),
              trailing: Icon(
                Icons.person,
                color: Colors.cyan,
                size: 30.0,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(30, 5, 30, 10),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/orderhistory');
              },
              title: Text(
                'Order History',
                style: TextStyle(fontSize: 18.0),
              ),
              trailing: Icon(
                Icons.settings_backup_restore,
                color: Colors.cyan,
                size: 30.0,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(30, 5, 30, 10),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/objectdetection');
              },
              title: Text(
                'Object  Detection',
                style: TextStyle(fontSize: 18.0),
              ),
              trailing: Icon(
                Icons.adjust,
                color: Colors.cyan,
                size: 30.0,
              ),
            ),
            Divider(
              color: Colors.cyan,
            ), //D I V I D E R
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(30, 5, 30, 10),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/settings');
              },
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 18.0),
              ),
              trailing: Icon(
                Icons.settings,
                color:Color(0xFFF8C436),
                size: 30.0,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(30, 5, 30, 10),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('');
              },
              title: Text(
                'About',
                style: TextStyle(fontSize: 18.0),
              ),
              trailing: Icon(
                Icons.help,
                color: Colors.red,
                size: 30.0,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          new Column(
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
                        borderRadius: BorderRadius.circular(150),
                        color: Color(0xFFFEE57F).withOpacity(0.4),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    
                      Row(
                        children: <Widget>[
                          SizedBox(width: 15),
                          InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pushNamed('/profilepage');
                              });
                            },
                            child: Container(
                              alignment: Alignment.topLeft,
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: Colors.white,
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    width: 3.0,
                                    color: Colors.white,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage('images/dp1.jpg'),
                                  )),
                            ),
                          ),
                           SizedBox(width: MediaQuery.of(context).size.width-220,),
                    Container(
                  height: 140,
                  width: 130,
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset('images/hopqblack.png',),
                  ),
                ),
                        ],
                      ),
                      
                      
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Hello, Sanyam',
                          style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 35,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Here's a list of live stores near you.",
                          style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 25,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              itemCard(context, '24 Seven', 'images/24seven.png', true,'2.1Km away'),
               itemCard(context, 'Big Bazar', 'images/BigBazar.jpg', false,'3.4Km away'),
                itemCard(context, 'Planet Needs', 'images/planetneeds.png', false,'4Km away'),
                  itemCard(context, 'Sodhi Super Mart', 'images/ssm_logo.jpg', true,'7Km away'),
            ],
          ),
        ],
      ),
    );
  }
}

Widget itemCard(
  BuildContext context,
  String title,
  String imagePath,
  bool isfavourite,
  String km,
) {
  var deviceSize = MediaQuery.of(context).size;
  // var storeList=[
  //   {
  //     "title":"24 Seven",
  //     "imagePath":'images/24seven.png',
  //     "isfavourite":true,
  //     "km":'2.1Km away', 
  //   }, {
  //     "title":"Big Bazar",
  //     "imagePath":'images/BigBazar.jpg',
  //     "isfavourite":false,
  //     "km":'3.4Km away', 
  //   }, {
  //     "title":"Planet Needs",
  //     "imagePath":'images/planetneeds.png',
  //     "isfavourite":true,
  //     "km":'4Km away', 
  //   }, {
  //     "title":"Sodhi Super Mart",
  //     "imagePath":'images/ssm_logo.jpg',
  //     "isfavourite": false,
  //     "km":'7Km away', 
  //   },  
  // ];
  return Padding(
    padding: EdgeInsets.only(left: 15, right: 15, top: 15),
    child: Container(
      
      height: 185,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xFFF9C335),
          width: 3.0,
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        
        elevation: 2.0,
        color: Colors.white,
        child: Column(
          
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Material(
                  child: InkWell(
                    onTap: () {
                       Navigator.of(context).pushNamed('/scanner');
                    },
                    child: Container(
                      
                      padding: EdgeInsets.only(left: 20),
                      height: 150,
                      width: 140,
                      decoration: BoxDecoration(
                       
                        image: DecorationImage(
                          image: AssetImage(
                            imagePath,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: deviceSize.width / 6,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 3,),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 20,
                          width: 130,
                          child: Text(
                            title,
                            style: TextStyle(
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Material(
                          elevation: isfavourite ? 2.0 : 0.0,
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            onTap: () {
                             
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: isfavourite
                                      ? Colors.white
                                      : Color(0xFFF1F1F1)),
                              child: Center(
                                child: isfavourite
                                    ? Icon(Icons.favorite, color: Colors.red)
                                    : Icon(
                                        Icons.favorite_border,
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                   
                    Container(
                      width: 120,
                      child: Text(
                        "This is a dummy description which can be fetched later.",
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            color: Colors.grey,
                            fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(km,),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                         Navigator.of(context).pushNamed('/scanner');
                            
                      },
                                          child: Row(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 60,
                            color: Color(0xFFF9C335),
                            child: Center(
                              child: Icon(Icons.shopping_cart,color: Colors.white,)
                          ),),
                          Container(
                            decoration: BoxDecoration(
                              color:Color(0xFFFEDD59) ,
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
                            ),
                            height: 50,
                            width: 130,
                            
                            child: Center(
                              child: Text('SHOP',
                                  style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
