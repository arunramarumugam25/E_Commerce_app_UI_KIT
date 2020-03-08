import 'package:e_com/Sub_widgets/Edit.dart';
import 'package:e_com/screens/Homescreen.dart';
import 'package:e_com/screens/Login.dart';
//import 'package:e_com/screens/Login.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static String tag = 'Profile';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
 

  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 40.0,
            color: Colors.red[200],
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.red,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homescreen()),
              );
            },
          )
        ],
        title: Text('Profile',
            style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
                fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 35.0, right: 35.0, top: 20.0),
                    height: 200.0,
                    decoration: new BoxDecoration(
                      color: Colors.red[50],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new GestureDetector(
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        image: DecorationImage(
                                            image:
                                                AssetImage('asset/man.png'))),
                                  ),
                                  onTap: () {
                                    //pickimagefromgallery(ImageSource.gallery);
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: new Text(
                                    'Username',
                                    style: new TextStyle(
                                      fontFamily: 'Nunito-Bold',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.red,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: new Text(
                                    'userxxxxx@mail.com',
                                    style: new TextStyle(
                                      fontFamily: 'Nunito-Regular',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )),
                InkWell(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 30.0, left: 50.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.call,
                                color: Colors.red[100],
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 35.0, left: 10.0),
                          height: 24.0,
                          child: new Text(
                            'Mobile number',
                            style: new TextStyle(
                              fontFamily: 'Nunito-Bold',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 35.0, left: 50.0),
                          height: 24.0,
                          child: new Text(
                            '9655552500',
                            style: new TextStyle(
                              fontFamily: 'Nunito-Bold',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.redAccent,
                            ),
                          ),
                        )
                      ],
                    ),
                    onTap: () {}),
                InkWell(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 30.0, left: 50.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.payment,
                                color: Colors.red[100],
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 35.0, left: 10.0),
                          height: 24.0,
                          child: new Text(
                            'Referal code',
                            style: new TextStyle(
                              fontFamily: 'Nunito-Bold',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 35.0, left: 60.0),
                          height: 24.0,
                          child: new Text(
                            '2503bbz2511',
                            style: new TextStyle(
                              fontFamily: 'Nunito-Bold',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.redAccent,
                            ),
                          ),
                        )
                      ],
                    ),
                    onTap: () {}),
                InkWell(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 30.0, left: 50.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.collections_bookmark,
                                color: Colors.red[100],
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 35.0, left: 10.0),
                          height: 24.0,
                          child: new Text(
                            'BonBiz coins',
                            style: new TextStyle(
                              fontFamily: 'Nunito-Bold',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 35.0, left: 60.0),
                          height: 24.0,
                          child: new Text(
                            '200',
                            style: new TextStyle(
                              fontFamily: 'Nunito-Bold',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.redAccent,
                            ),
                          ),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Edit()),
                      );
                    }),
                InkWell(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 30.0, left: 50.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.account_circle,
                                color: Colors.red[100],
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 35.0, left: 10.0),
                          height: 24.0,
                          child: new Text(
                            'Edit Profile',
                            style: new TextStyle(
                              fontFamily: 'Nunito-Bold',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.redAccent,
                            ),
                          ),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Edit()),
                            );
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 60.0, top: 50.0),
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 20.0,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150.0,
                          height: 40.0,
                          color: Colors.red,
                          child: Text(
                            'Logout',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
