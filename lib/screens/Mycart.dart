import 'package:e_com/screens/Homescreen.dart';
import 'package:e_com/screens/Payment.dart';
import 'package:flutter/material.dart';

class Mycart extends StatefulWidget {
  static String tag = 'Mycart';
  @override
  _MycartState createState() => _MycartState();
}

class _MycartState extends State<Mycart> {
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomPadding: false,
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
                color: Color(0XFFFE4040),
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
          title: Text('My Cart',
              style: TextStyle(
                  color: Color(0XFFFE4040),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600)),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: height,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Container(
      margin: EdgeInsets.all(10.0),
      height: 110,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
          ),
          boxShadow: [BoxShadow(color: Color(0XFFFE4040), blurRadius: 2.0)]),
      child: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/oran.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                            bottomLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0))),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text('Orange - XX Traders',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.red[900],
                            fontWeight: FontWeight.w700)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text('Rs.300/2KG',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: IconButton(
                            icon: Icon(
                              Icons.remove_circle_outline,
                              color: Color(0XFFFE4040),
                              size: 20.0,
                            ),
                            onPressed: () {},
                          ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child:Text('1',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.red[700],
                            fontWeight: FontWeight.w400)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: IconButton(
                            icon: Icon(
                              Icons.add_circle_outline,
                              color: Color(0XFFFE4040),
                              size: 20.0,
                            ),
                            onPressed: () {},
                          ),
                          ),
                        ],
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                 
                      Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                         IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                        ),
                        iconSize: 20.0,
                        color: Colors.red[700],
                      ), 
                        ],
                      )
                    
                      ),
                      Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                         IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                        ),
                        iconSize: 20.0,
                        color: Colors.red[700],
                      ), 
                        ],
                      )
                    
                      )
                ],
              )
            ],
          )
        ],
      ),
    ),
     Container(
      margin: EdgeInsets.all(10.0),
      height: 110,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
          ),
          boxShadow: [BoxShadow(color: Color(0XFFFE4040), blurRadius: 2.0)]),
      child: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/p3.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                            bottomLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0))),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text('Berry - WXY Traders',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.red[900],
                            fontWeight: FontWeight.w700)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text('Rs.300/2KG',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: IconButton(
                            icon: Icon(
                              Icons.remove_circle_outline,
                              color: Color(0XFFFE4040),
                              size: 20.0,
                            ),
                            onPressed: () {},
                          ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child:Text('1',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.red[700],
                            fontWeight: FontWeight.w400)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: IconButton(
                            icon: Icon(
                              Icons.add_circle_outline,
                              color: Color(0XFFFE4040),
                              size: 20.0,
                            ),
                            onPressed: () {},
                          ),
                          ),
                        ],
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                 
                      Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                         IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                        ),
                        iconSize: 20.0,
                        color: Colors.red[700],
                      ), 
                        ],
                      )
                    
                      ),
                      Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                         IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                        ),
                        iconSize: 20.0,
                        color: Colors.red[700],
                      ), 
                        ],
                      )
                    
                      )
                ],
              )
            ],
          )
        ],
      ),
    ),
     Container(
      margin: EdgeInsets.all(10.0),
      height: 110,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
          ),
          boxShadow: [BoxShadow(color: Color(0XFFFE4040), blurRadius: 2.0)]),
      child: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/p2.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                            bottomLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0))),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text('Grapes - AGR Traders',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.red[900],
                            fontWeight: FontWeight.w700)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text('Rs.50/2KG',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: IconButton(
                            icon: Icon(
                              Icons.remove_circle_outline,
                              color: Color(0XFFFE4040),
                              size: 20.0,
                            ),
                            onPressed: () {},
                          ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child:Text('1',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.red[700],
                            fontWeight: FontWeight.w400)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: IconButton(
                            icon: Icon(
                              Icons.add_circle_outline,
                              color: Color(0XFFFE4040),
                              size: 20.0,
                            ),
                            onPressed: () {},
                          ),
                          ),
                        ],
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                 
                      Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                         IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                        ),
                        iconSize: 20.0,
                        color: Colors.red[700],
                      ), 
                        ],
                      )
                    
                      ),
                      Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                         IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                        ),
                        iconSize: 20.0,
                        color: Colors.red[700],
                      ), 
                        ],
                      )
                    
                      )
                ],
              ) 
            ],
          )
        ],
      ),
    ),
     Container(
      margin: EdgeInsets.all(10.0),
      height: 110,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
          ),
          boxShadow: [BoxShadow(color: Color(0XFFFE4040), blurRadius: 2.0)]),
      child: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/p1.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                            bottomLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0))),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text('Carrot - GAD Traders',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.red[900],
                            fontWeight: FontWeight.w700)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text('Rs.250/2KG',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: IconButton(
                            icon: Icon(
                              Icons.remove_circle_outline,
                              color: Color(0XFFFE4040),
                              size: 20.0,
                            ),
                            onPressed: () {},
                          ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child:Text('1',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.red[700],
                            fontWeight: FontWeight.w400)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: IconButton(
                            icon: Icon(
                              Icons.add_circle_outline,
                              color: Color(0XFFFE4040),
                              size: 20.0,
                            ),
                            onPressed: () {},
                          ),
                          ),
                        ],
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                 
                      Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                         IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                        ),
                        iconSize: 20.0,
                        color: Colors.red[700],
                      ), 
                        ],
                      )
                    
                      ),
                      Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                         IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                        ),
                        iconSize: 20.0,
                        color: Colors.red[700],
                      ), 
                        ],
                      )
                    
                      )
                ],
              )
            ],
          )
        ],
      ),
    ),
            Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10, right: 30.0),
                      child: Text(
                        'Subtotal(4 Items)',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Canterbury'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, right: 30.0),
                      child: Text(
                        'RS.2400',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Canterbury'),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20, right: 40.0),
                      child: Text(
                        'Tax',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Canterbury'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, right: 30.0),
                      child: Text(
                        'RS.400',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Canterbury'),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20, right: 30.0),
                      child: Text(
                        'Cart Total',
                        style: TextStyle(
                            color: Color(0XFFFE4040),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Canterbury'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, right: 30.0),
                      child: Text(
                        'RS.2800',
                        style: TextStyle(
                            color: Color(0XFFFE4040),
                            fontSize: 16.0,
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
                      padding: EdgeInsets.only(top: 40,bottom: 10.0),
                      child: new Material(
                          borderRadius: BorderRadius.circular(10.0),
                          shadowColor: Colors.blue[300],
                          elevation: 10.0,
                          child: MaterialButton(
                            minWidth: 150.0,
                            height: 50.0,
                            color: Colors.redAccent,
                            child: Text('Secure Checkout',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()),
                              );
                            },
                          )),
                    ),
                  ],
                )
             
                  ],
                ),
              ),
            ),
         
          ], 
        ));
  }
}
