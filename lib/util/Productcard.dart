import 'package:e_com/util/Secondarydetail.dart';
import 'package:flutter/material.dart';
import 'package:e_com/util/Productdetail.dart';
import 'package:page_transition/page_transition.dart';

class Product extends StatefulWidget {
  static String tag = 'Product';
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
     InkWell(
      onTap: () {
        Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Productdetail()));
       // Navigator.push( context, MaterialPageRoute(builder: (context) => Productdetail()), );
      },
      child: Container(
        margin: EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
        width: 130,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.red[200], blurRadius: 2.0)]),
        child: Stack(
          children: <Widget>[
            InkWell(
                onTap: () {
                  
                 Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Productdetail()));
                 //Navigator.push(context, PageTransition(type: PageTransitionType.downToUp,duration: Duration(milliseconds: 600), child: Productdetail()));
                },
                child: Stack(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                       Hero(
                         tag: 'oran',
                         child:  Container(
                            margin: EdgeInsets.only(top: 10.0),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: AssetImage('asset/oran.jpg'),
                                    fit: BoxFit.contain))),
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
                              padding: EdgeInsets.only(top: 65.0, left: 10.0),
                              child: Text(
                                'Orange',
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(top: 65.0, right: 2.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14.0,
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 65.0, right: 10.0),
                              child: Text(
                                '5.0',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 100.0, left: 10.0),
                              child: Text(
                                'Rs.110/KG',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w300,
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
                              padding: EdgeInsets.only(top: 100.0, right: 10.0),
                              child: Text(
                                '200 Buyers',
                                style: TextStyle(
                                    color: Color(0XFFFE4040),
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Canterbury'),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.only(bottom: 5.0, right: 20.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red[900],
                                  size: 20.0,
                                )),
                            Padding(
                                padding:
                                    EdgeInsets.only(bottom: 5.0, right: 20.0),
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
       Navigator.push(context, PageTransition(type: PageTransitionType.downToUp,duration: Duration(milliseconds: 1300), child: Secondarydetail()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
        width: 130,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.red[200], blurRadius: 2.0)]),
        child: Stack(
          children: <Widget>[
            InkWell(
                onTap: () {
                 Navigator.push(context, PageTransition(type: PageTransitionType.downToUp,duration: Duration(milliseconds: 600), child: Secondarydetail()));
                },
                child: Stack(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(top: 10.0),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: AssetImage('asset/p2.jpg'),
                                    fit: BoxFit.cover))),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 65.0, left: 10.0),
                              child: Text(
                                'Orange',
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(top: 65.0, right: 2.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14.0,
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 65.0, right: 10.0),
                              child: Text(
                                '5.0',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 100.0, left: 10.0),
                              child: Text(
                                'Rs.110/KG',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w300,
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
                              padding: EdgeInsets.only(top: 100.0, right: 10.0),
                              child: Text(
                                '200 Buyers',
                                style: TextStyle(
                                    color: Color(0XFFFE4040),
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Canterbury'),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.only(bottom: 5.0, right: 20.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red[900],
                                  size: 20.0,
                                )),
                            Padding(
                                padding:
                                    EdgeInsets.only(bottom: 5.0, right: 20.0),
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
        Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Secondarydetail()));
        //Navigator.push(context, PageTransition(type: PageTransitionType.downToUp,duration: Duration(milliseconds: 600), child: Productdetail()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
        width: 130,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.red[200], blurRadius: 2.0)]),
        child: Stack(
          children: <Widget>[
            InkWell(
                onTap: () {
                  Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Secondarydetail()));
                },
                child: Stack(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(top: 10.0),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: AssetImage('asset/p3.jpg'),
                                    fit: BoxFit.cover))),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 65.0, left: 10.0),
                              child: Text(
                                'Orange',
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(top: 65.0, right: 2.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14.0,
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 65.0, right: 10.0),
                              child: Text(
                                '5.0',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 100.0, left: 10.0),
                              child: Text(
                                'Rs.110/KG',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w300,
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
                              padding: EdgeInsets.only(top: 100.0, right: 10.0),
                              child: Text(
                                '200 Buyers',
                                style: TextStyle(
                                    color: Color(0XFFFE4040),
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Canterbury'),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.only(bottom: 5.0, right: 20.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red[900],
                                  size: 20.0,
                                )),
                            Padding(
                                padding:
                                    EdgeInsets.only(bottom: 5.0, right: 20.0),
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
         Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Secondarydetail()));
       //Navigator.push(context, PageTransition(type: PageTransitionType.downToUp,duration: Duration(milliseconds: 600), child: Productdetail()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
        width: 130,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.red[200], blurRadius: 2.0)]),
        child: Stack(
          children: <Widget>[
            InkWell(
                onTap: () {
                  Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Secondarydetail()));
                 // Navigator.push(context, PageTransition(type: PageTransitionType.downToUp,duration: Duration(milliseconds: 600), child: Productdetail()));
                },
                child: Stack(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(top: 10.0),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: AssetImage('asset/p4.jpg'),
                                    fit: BoxFit.cover))),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 65.0, left: 10.0),
                              child: Text(
                                'Orange',
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(top: 65.0, right: 2.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14.0,
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 65.0, right: 10.0),
                              child: Text(
                                '5.0',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 100.0, left: 10.0),
                              child: Text(
                                'Rs.110/KG',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w300,
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
                              padding: EdgeInsets.only(top: 100.0, right: 10.0),
                              child: Text(
                                '200 Buyers',
                                style: TextStyle(
                                    color: Color(0XFFFE4040),
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Canterbury'),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.only(bottom: 5.0, right: 20.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red[900],
                                  size: 20.0,
                                )),
                            Padding(
                                padding:
                                    EdgeInsets.only(bottom: 5.0, right: 20.0),
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
        //Navigator.push(context, PageTransition(type: PageTransitionType.downToUp,duration: Duration(milliseconds: 600), child: Productdetail()));
      Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Secondarydetail()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 5.0, left: 20, bottom: 10.0),
        width: 130,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.red[200], blurRadius: 2.0)]),
        child: Stack(
          children: <Widget>[
            InkWell(
                onTap: () {
                   Navigator.push(context, PageTransition(type: PageTransitionType.scale,duration: Duration(seconds: 1), child: Secondarydetail()));
                  //Navigator.push(context, PageTransition(type: PageTransitionType.downToUp,duration: Duration(milliseconds: 600), child: Productdetail()));
                },
                child: Stack(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(top: 10.0),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: AssetImage('asset/p1.jpg'),
                                    fit: BoxFit.cover))),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 65.0, left: 10.0),
                              child: Text(
                                'Orange',
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(top: 65.0, right: 2.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14.0,
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 65.0, right: 10.0),
                              child: Text(
                                '5.0',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 100.0, left: 10.0),
                              child: Text(
                                'Rs.110/KG',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w300,
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
                              padding: EdgeInsets.only(top: 100.0, right: 10.0),
                              child: Text(
                                '200 Buyers',
                                style: TextStyle(
                                    color: Color(0XFFFE4040),
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Canterbury'),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.only(bottom: 5.0, right: 20.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red[900],
                                  size: 20.0,
                                )),
                            Padding(
                                padding:
                                    EdgeInsets.only(bottom: 5.0, right: 20.0),
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
    );
  }
}
