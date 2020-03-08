import 'dart:async';
import 'dart:io';
import 'package:e_com/screens/Homescreen.dart';
import 'package:e_com/util/ForgetPassword.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String tag = 'Login';
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Login> with SingleTickerProviderStateMixin {
  final scaffoldkey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  Future<bool> _onBackPressed() {
    exit(0);
  }

  String option;
  TabController _tabcontroller;
  var currentPage = 0;
  var isPageCanChanged = true;
  @override
  void initState() {
    super.initState();
    _tabcontroller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Stack(
              children: <Widget>[
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                      color: Color(0XFFFE4040),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(color: Colors.red[700], blurRadius: 50.0)
                      ]),
                  child: Stack(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 40.0),
                            child: Container(
                              width: 250,
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('asset/vege.png'),
                                      fit: BoxFit.cover)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                        Widget>[
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 350,
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(color: Colors.red, blurRadius: 5.0)
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: MaterialApp(
                              debugShowCheckedModeBanner: false,
                              home: DefaultTabController(
                                length: 2,
                                child: Scaffold(
                                  resizeToAvoidBottomPadding: false,
                                  appBar: PreferredSize(
                                      preferredSize: Size.fromHeight(60.0),
                                      child: AppBar(
                                          backgroundColor: Colors.red[500],
                                          bottom: TabBar(
                                            controller: _tabcontroller,
                                            tabs: <Tab>[
                                              new Tab(
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 5.0),
                                                    child: Text(
                                                      'Login',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontFamily:
                                                              'Canterbury'),
                                                    )),
                                              ),
                                              new Tab(
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 5.0),
                                                    child: Text(
                                                      'Sign Up',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontFamily:
                                                              'Canterbury'),
                                                    )),
                                              ),
                                            ],
                                            indicatorColor: Colors.red[200],
                                          ))),
                                  body: TabBarView(
                                    controller: _tabcontroller,
                                    children: <Widget>[
                                     Container(
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.red[300],
                        ),
                        labelText: 'Email Address',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        hintText: 'you@example.com',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 5.0),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.red[300],
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        hintText: 'Enter your password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: 120,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: new Material(
                                  borderRadius: BorderRadius.circular(10.0),
                                  shadowColor: Colors.blue[300],
                                  elevation: 10.0,
                                  child: MaterialButton(
                                    minWidth: 50.0,
                                    height: 50.0,
                                    color: Colors.redAccent,
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Canterbury'),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Homescreen()),
                                      );
                                    },
                                  ))),
                        ],
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    ),
    Container(
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.red[300],
                        ),
                        labelText: 'Email Address',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        hintText: 'you@example.com',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 5.0),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.red[300],
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        hintText: 'Enter your password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: 120,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: new Material(
                                  borderRadius: BorderRadius.circular(10.0),
                                  shadowColor: Colors.blue[300],
                                  elevation: 10.0,
                                  child: MaterialButton(
                                    minWidth: 50.0,
                                    height: 50.0,
                                    color: Colors.redAccent,
                                    child: Text(
                                      'Sign up',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Canterbury'),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Homescreen()),
                                      );
                                    },
                                  )))
                        ],
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 5.0, right: 30.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgetPassword()),
                              );
                            },
                            child: Text(
                              'Forget Password ?',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red[300]),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text('Or Sign up with',
                              style: TextStyle(
                                  color: Colors.red[300],
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          child: Container(
                              margin: EdgeInsets.all(20),
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('asset/fb.png'),
                                      fit: BoxFit.cover))),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              margin: EdgeInsets.all(20),
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('asset/gmail.png'),
                                    fit: BoxFit.cover),
                              )),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              margin: EdgeInsets.all(20),
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('asset/instagram.png'),
                                    fit: BoxFit.cover),
                              )),
                        )
                      ],
                    ),
                  ],
                )
              ],
            )));
  }
}
