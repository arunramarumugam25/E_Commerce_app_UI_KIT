import 'package:flutter/material.dart';

class Reviewlist extends StatefulWidget {
  static String tag = 'Reviewlist';
  @override
  _ReviewlistState createState() => _ReviewlistState();
}

class _ReviewlistState extends State<Reviewlist> {
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(
        top: 13,
      ),
      width: width,
      height: height / 1.9,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            margin:
                EdgeInsets.only(top: 5.0, left: 10, bottom: 10.0, right: 10.0),
            width: 100,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.red[200], blurRadius: 2.0)
                ]),
            child: Stack(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(15.0),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                                image: AssetImage('asset/man.png'),
                                fit: BoxFit.contain))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, left: 90),
                      child: Text(
                        'Mr.Arunram',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Canterbury'),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 35.0),
                      child: Text(
                        'Very Good and fresh fruits and \ntimelydelivery,must buy for its\ntaste.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Canterbury'),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 15.0, right: 10),
                          child: Text(
                            '5.0 Stars',
                            style: TextStyle(
                                color: Colors.red[50],
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Canterbury'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: 5.0, left: 10, bottom: 10.0, right: 10.0),
            width: 100,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.red[200], blurRadius: 2.0)
                ]),
            child: Stack(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(15.0),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                                image: AssetImage('asset/man.png'),
                                fit: BoxFit.contain))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, left: 90),
                      child: Text(
                        'Mr.Varun',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Canterbury'),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 35.0),
                      child: Text(
                        'Good product,seems to be more\nnatural and chemical free',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Canterbury'),
                      ),
                    )
                  ],
                ),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 15.0, right: 10),
                          child: Text(
                            '2.5 Stars',
                            style: TextStyle(
                                color: Colors.red[50],
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Canterbury'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: 5.0, left: 10, bottom: 10.0, right: 10.0),
            width: 100,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.red[200], blurRadius: 2.0)
                ]),
            child: Stack(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(15.0),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                                image: AssetImage('asset/man.png'),
                                fit: BoxFit.contain))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, left: 90),
                      child: Text(
                        'Mr.User one',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Canterbury'),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 40.0),
                      child: Text(
                        'Very Good and fresh fruits',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Canterbury'),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 15.0, right: 10),
                          child: Text(
                            '4.0 Stars',
                            style: TextStyle(
                                color: Colors.red[50],
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Canterbury'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: 5.0, left: 10, bottom: 10.0, right: 10.0),
            width: 100,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.red[200], blurRadius: 2.0)
                ]),
            child: Stack(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(15.0),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                                image: AssetImage('asset/man.png'),
                                fit: BoxFit.contain))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, left: 90),
                      child: Text(
                        'Mr.User one',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Canterbury'),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 40.0),
                      child: Text(
                        'Very Good and fresh fruits',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Canterbury'),
                      ),
                    )
                  ],
                ),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 15.0, right: 10),
                          child: Text(
                            '3.8 Stars',
                            style: TextStyle(
                                color: Colors.red[50],
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Canterbury'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
