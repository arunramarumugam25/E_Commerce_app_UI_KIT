import 'package:e_com/util/Productdetail.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class Productview extends StatefulWidget {
  static String tag = 'Productview';
  @override
  _ProductviewState createState() => _ProductviewState();
}

class _ProductviewState extends State<Productview> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final formKey = new GlobalKey<FormState>();
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Color(0XFFFE4040)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Products',
          style: TextStyle(
              color: Color(0XFFFE4040),
              fontSize: 18.0,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: width,
            height: height,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      width: width / 1.1,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.red[200], blurRadius: 2.0)
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  right: 20.0, top: 5),
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.toc,
                                                  color: Colors.red[300],
                                                ),
                                              ))
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: width,
                  height: height,
                  child: GridView.count(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10.0, right: 20),
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Productdetail()),
                          );
                        },
                        child: Container(
                          margin:
                              EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.red[200], blurRadius: 2.0)
                              ]),
                          child: Stack(
                            children: <Widget>[
                              InkWell(
                                  onTap: () {
                                    Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Productdetail()));
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                              margin:
                                                  EdgeInsets.only(top: 10.0),
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'asset/p1.jpg'),
                                                      fit: BoxFit.cover))),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 65.0, left: 10.0),
                                                child: Text(
                                                  'Orange',
                                                  style: TextStyle(
                                                      color: Color(0XFFFE4040),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 65.0, right: 2.0),
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Colors.green,
                                                    size: 14.0,
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 65.0, right: 10.0),
                                                child: Text(
                                                  '5.0',
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 100.0, left: 10.0),
                                                child: Text(
                                                  'Rs.110/KG',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 100.0, right: 10.0),
                                                child: Text(
                                                  '200 Buyers',
                                                  style: TextStyle(
                                                      color: Color(0XFFFE4040),
                                                      fontSize: 8.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0, right: 20.0),
                                                  child: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.red[900],
                                                    size: 20.0,
                                                  )),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0, right: 20.0),
                                                  child: Icon(
                                                    Icons.shopping_cart,
                                                    color: Colors.red[900],
                                                    size: 20.0,
                                                  )),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Productdetail()));
                        },
                        child: Container(
                          margin:
                              EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.red[200], blurRadius: 2.0)
                              ]),
                          child: Stack(
                            children: <Widget>[
                              InkWell(
                                  onTap: () {
                                    Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Productdetail()));
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                              margin:
                                                  EdgeInsets.only(top: 10.0),
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'asset/oran.jpg'),
                                                      fit: BoxFit.cover))),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 65.0, left: 10.0),
                                                child: Text(
                                                  'Orange',
                                                  style: TextStyle(
                                                      color: Color(0XFFFE4040),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 65.0, right: 2.0),
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Colors.green,
                                                    size: 14.0,
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 65.0, right: 10.0),
                                                child: Text(
                                                  '5.0',
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 100.0, left: 10.0),
                                                child: Text(
                                                  'Rs.110/KG',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 100.0, right: 10.0),
                                                child: Text(
                                                  '200 Buyers',
                                                  style: TextStyle(
                                                      color: Color(0XFFFE4040),
                                                      fontSize: 8.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0, right: 20.0),
                                                  child: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.red[900],
                                                    size: 20.0,
                                                  )),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0, right: 20.0),
                                                  child: Icon(
                                                    Icons.shopping_cart,
                                                    color: Colors.red[900],
                                                    size: 20.0,
                                                  )),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                       InkWell(
                        onTap: () {
                         Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Productdetail()));
                        },
                        child: Container(
                          margin:
                              EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.red[200], blurRadius: 2.0)
                              ]),
                          child: Stack(
                            children: <Widget>[
                              InkWell(
                                  onTap: () {
                                    Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Productdetail()));
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                              margin:
                                                  EdgeInsets.only(top: 10.0),
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'asset/p4.jpg'),
                                                      fit: BoxFit.cover))),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 65.0, left: 10.0),
                                                child: Text(
                                                  'Orange',
                                                  style: TextStyle(
                                                      color: Color(0XFFFE4040),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 65.0, right: 2.0),
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Colors.green,
                                                    size: 14.0,
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 65.0, right: 10.0),
                                                child: Text(
                                                  '5.0',
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 100.0, left: 10.0),
                                                child: Text(
                                                  'Rs.110/KG',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 100.0, right: 10.0),
                                                child: Text(
                                                  '200 Buyers',
                                                  style: TextStyle(
                                                      color: Color(0XFFFE4040),
                                                      fontSize: 8.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0, right: 20.0),
                                                  child: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.red[900],
                                                    size: 20.0,
                                                  )),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0, right: 20.0),
                                                  child: Icon(
                                                    Icons.shopping_cart,
                                                    color: Colors.red[900],
                                                    size: 20.0,
                                                  )),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Productdetail()));
                        },
                        child: Container(
                          margin:
                              EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.red[200], blurRadius: 2.0)
                              ]),
                          child: Stack(
                            children: <Widget>[
                              InkWell(
                                  onTap: () {
                                   Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Productdetail()));
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                              margin:
                                                  EdgeInsets.only(top: 10.0),
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'asset/p3.jpg'),
                                                      fit: BoxFit.cover))),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 65.0, left: 10.0),
                                                child: Text(
                                                  'Orange',
                                                  style: TextStyle(
                                                      color: Color(0XFFFE4040),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 65.0, right: 2.0),
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Colors.green,
                                                    size: 14.0,
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 65.0, right: 10.0),
                                                child: Text(
                                                  '5.0',
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 100.0, left: 10.0),
                                                child: Text(
                                                  'Rs.110/KG',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 100.0, right: 10.0),
                                                child: Text(
                                                  '200 Buyers',
                                                  style: TextStyle(
                                                      color: Color(0XFFFE4040),
                                                      fontSize: 8.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0, right: 20.0),
                                                  child: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.red[900],
                                                    size: 20.0,
                                                  )),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0, right: 20.0),
                                                  child: Icon(
                                                    Icons.shopping_cart,
                                                    color: Colors.red[900],
                                                    size: 20.0,
                                                  )),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                       InkWell(
                        onTap: () {
                         Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Productdetail()));
                        },
                        child: Container(
                          margin:
                              EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.red[200], blurRadius: 2.0)
                              ]),
                          child: Stack(
                            children: <Widget>[
                              InkWell(
                                  onTap: () {
                                    Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Productdetail()));
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                              margin:
                                                  EdgeInsets.only(top: 10.0),
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'asset/p2.jpg'),
                                                      fit: BoxFit.cover))),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 65.0, left: 10.0),
                                                child: Text(
                                                  'Orange',
                                                  style: TextStyle(
                                                      color: Color(0XFFFE4040),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 65.0, right: 2.0),
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Colors.green,
                                                    size: 14.0,
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 65.0, right: 10.0),
                                                child: Text(
                                                  '5.0',
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 100.0, left: 10.0),
                                                child: Text(
                                                  'Rs.110/KG',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 100.0, right: 10.0),
                                                child: Text(
                                                  '200 Buyers',
                                                  style: TextStyle(
                                                      color: Color(0XFFFE4040),
                                                      fontSize: 8.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0, right: 20.0),
                                                  child: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.red[900],
                                                    size: 20.0,
                                                  )),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0, right: 20.0),
                                                  child: Icon(
                                                    Icons.shopping_cart,
                                                    color: Colors.red[900],
                                                    size: 20.0,
                                                  )),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                         Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Productdetail()));
                        },
                        child: Container(
                          margin:
                              EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.red[200], blurRadius: 2.0)
                              ]),
                          child: Stack(
                            children: <Widget>[
                              InkWell(
                                  onTap: () {
                                    Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Productdetail()));
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                              margin:
                                                  EdgeInsets.only(top: 10.0),
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'asset/p1.jpg'),
                                                      fit: BoxFit.cover))),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 65.0, left: 10.0),
                                                child: Text(
                                                  'Orange',
                                                  style: TextStyle(
                                                      color: Color(0XFFFE4040),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 65.0, right: 2.0),
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Colors.green,
                                                    size: 14.0,
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 65.0, right: 10.0),
                                                child: Text(
                                                  '5.0',
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 100.0, left: 10.0),
                                                child: Text(
                                                  'Rs.110/KG',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 100.0, right: 10.0),
                                                child: Text(
                                                  '200 Buyers',
                                                  style: TextStyle(
                                                      color: Color(0XFFFE4040),
                                                      fontSize: 8.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: 'Canterbury'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0, right: 20.0),
                                                  child: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.red[900],
                                                    size: 20.0,
                                                  )),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.0, right: 20.0),
                                                  child: Icon(
                                                    Icons.shopping_cart,
                                                    color: Colors.red[900],
                                                    size: 20.0,
                                                  )),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
