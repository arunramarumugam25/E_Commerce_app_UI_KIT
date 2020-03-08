import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_com/Sub_widgets/Categorylist.dart';
import 'package:e_com/Sub_widgets/Productlist.dart';
import 'package:e_com/screens/Favourite.dart';
import 'package:e_com/screens/Mycart.dart';
import 'package:e_com/screens/Productview.dart';
import 'package:e_com/screens/Profile.dart';
import 'package:e_com/util/Categories.dart';
import 'package:e_com/util/Myorder.dart';
import 'package:e_com/widgets/Notifications.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  static String tag = 'Homescreen';
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  bool viewVisible = false;

  void showWidget() {
    setState(() {
      viewVisible = true;
    });
  }

  void hideWidget() {
    setState(() {
      viewVisible = false;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final formKey = new GlobalKey<FormState>();
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                width: width / 3,
                height: height / 3.9,
                child: DrawerHeader(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                              width: 70,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Profile()),
                                    );
                                  },
                                  icon: Icon(Icons.camera_alt,
                                      color: Color(0XFFFE4040)),
                                  iconSize: 50,
                                ),
                              ))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 10.0),
                            child: Text(
                              'Sita ram',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Canterbury'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 10.0),
                            child: Text(
                              'Sitaram@gmail.com',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Canterbury'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0XFFFE4040),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Canterbury'),
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.red[300],
                  size: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'My Cart',
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Canterbury'),
                ),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.red[300],
                  size: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mycart()),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'My Orders',
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Canterbury'),
                ),
                leading: Icon(
                  Icons.casino,
                  color: Colors.red[300],
                  size: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Myorder()),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'My Wishlist',
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Canterbury'),
                ),
                leading: Icon(
                  Icons.favorite_border,
                  color: Colors.red[300],
                  size: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Favourite()),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Notifications',
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Canterbury'),
                ),
                leading: Icon(
                  Icons.notifications,
                  color: Colors.red[300],
                  size: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notifications()),
                  );
                },
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 20.0),
                    child: Text(
                      'Products',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Canterbury'),
                    ),
                  )
                ],
              ),
              ListTile(
                title: Text(
                  'Categories',
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Canterbury'),
                ),
                leading: Icon(
                  Icons.category,
                  color: Colors.red[300],
                  size: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Categories()),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'View Products',
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Canterbury'),
                ),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red[300],
                  size: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Productview()),
                  );
                },
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 20.0),
                    child: Text(
                      'Application preferences',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Canterbury'),
                    ),
                  )
                ],
              ),
              ListTile(
                title: Text(
                  'Help & Support',
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Canterbury'),
                ),
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.red[300],
                  size: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Canterbury'),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.red[300],
                  size: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Languages',
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Canterbury'),
                ),
                leading: Icon(
                  Icons.language,
                  color: Colors.red[300],
                  size: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Stack(children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: width,
                    height: 130,
                    decoration: BoxDecoration(
                        color: Color(0XFFFE4040),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40)),
                        boxShadow: [
                          BoxShadow(color: Colors.red[200], blurRadius: 4.0)
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Builder(
                                      builder: (context) => IconButton(
                                        onPressed: () {
                                          Scaffold.of(context).openDrawer();
                                        },
                                        icon: Icon(Icons.menu,
                                            color: Colors.white),
                                      ),
                                    ))
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 20.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Mycart()),
                                      );
                                    },
                                    child: Icon(Icons.shopping_cart,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Container(
                      width: 340,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.red[200], blurRadius: 4.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Form(
                              key: formKey,
                              child: Stack(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          icon: Icon(
                                            Icons.search,
                                            color: Colors.red[300],
                                          ),
                                          labelText:
                                              'Enter the item to be searched',
                                          labelStyle: TextStyle(
                                              color: Colors.red[100],
                                              fontSize: 14.0),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                         Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                     Padding(
                                       padding: EdgeInsets.only(right: 20.0,top:5),
                                       child:  IconButton(
                                         onPressed: (){
                                           
                                         },
                                         icon: Icon(
                                            Icons.toc,
                                            color: Colors.red[300],
                                          ),
                                       )
                                     )
                                    ],
                                 )
                                      ],
                                    )
                                ],
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 170),
            child: Container(
                height: 190,
                // color: Colors.white,
                child: CarouselSlider(
                    height: height / 4.8,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  reverse: false,
                 autoPlayInterval: Duration(seconds: 2),
                 autoPlayAnimationDuration: Duration(milliseconds: 800),
                  pauseAutoPlayOnTouch: Duration(seconds: 2),
                  items: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        //boxShadow: [BoxShadow(color: Colors.blueGrey,blurRadius: 4.0)],
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                              image: AssetImage('asset/slide.png'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      
                      decoration: BoxDecoration(
                         //boxShadow: [BoxShadow(color: Colors.blueGrey,blurRadius: 4.0)],
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                              image: AssetImage('asset/post1.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          // boxShadow: [BoxShadow(color: Colors.blueGrey[50],blurRadius: 4.0)],
                          image: DecorationImage(
                              image: AssetImage('asset/post2.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                           //boxShadow: [BoxShadow(color: Colors.blueGrey,blurRadius: 2.0)],
                          image: DecorationImage(
                              image: AssetImage('asset/post.jpg'),
                              fit: BoxFit.cover)),
                    )
                  ],
                )
                
                ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                          color: Color(0XFFFE4040),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Canterbury'),
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(right: 20.0, top: 10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Categories()),
                          );
                        },
                        child: Text(
                          'View all',
                          style: TextStyle(
                              color: Color(0XFFFE4040),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Canterbury'),
                        ),
                      ))
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Categorylist(),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: height / 2.6),
                    child: Text(
                      'Products',
                      style: TextStyle(
                          color: Color(0XFFFE4040),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Canterbury'),
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(right: 20.0, top: height / 2.6),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Productview()),
                          );
                        },
                        child: Text(
                          'View all',
                          style: TextStyle(
                              color: Color(0XFFFE4040),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Canterbury'),
                        ),
                      ))
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: height / 2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Productlist(),
                  ],
                ),
              )
            ],
          ),
        ]));
  }
}

class Filter {
  static const String movie = 'Popularity';
  static const String conference = 'Price- Low to high';
  static const String community = 'Price- Hight to low';

  static const List<String> choices = <String>[
    movie,
    conference,
    community,
  ];
}
