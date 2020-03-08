import 'package:flutter/material.dart';

class Categorylist extends StatefulWidget{
  static String tag = 'Categorylist';
  @override 
   _CategorylistState createState() => _CategorylistState();
}
class _CategorylistState extends State<Categorylist>{
  
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    return Container(
                    margin: EdgeInsets.only(
                      top: 150,
                    ),
                    width: width,
                    height: 110,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin:
                              EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.red[200], blurRadius: 2.0)
                              ]),
                          child: Stack(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.all(5.0),
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage('asset/apple.png'),
                                              fit: BoxFit.contain))),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 75.0),
                                    child: Text(
                                      'Fruits',
                                      style: TextStyle(
                                          color: Color(0XFFFE4040),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Canterbury'),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.red[200], blurRadius: 2.0)
                              ]),
                          child: Stack(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.all(5.0),
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage('asset/pumkin.png'),
                                              fit: BoxFit.contain))),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 75.0),
                                    child: Text(
                                      'vegetables',
                                      style: TextStyle(
                                          color: Color(0XFFFE4040),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Canterbury'),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      Container(
                          margin:
                              EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.red[200], blurRadius: 2.0)
                              ]),
                          child: Stack(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.all(5.0),
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage('asset/oil.jpg'),
                                              fit: BoxFit.contain))),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 75.0),
                                    child: Text(
                                      'Oils',
                                      style: TextStyle(
                                          color: Color(0XFFFE4040),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Canterbury'),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.red[200], blurRadius: 2.0)
                              ]),
                          child: Stack(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.all(5.0),
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage('asset/spices.png'),
                                              fit: BoxFit.contain))),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 75.0),
                                    child: Text(
                                      'Spices',
                                      style: TextStyle(
                                          color: Color(0XFFFE4040),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Canterbury'),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
  }
}