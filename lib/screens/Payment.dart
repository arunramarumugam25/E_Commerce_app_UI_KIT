import 'package:e_com/screens/Bookorder.dart';
import 'package:e_com/screens/Homescreen.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  static String tag = 'Payment';
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> with SingleTickerProviderStateMixin {
  final scaffoldkey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return new  Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0XFFFE4040),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () => Navigator.pop(context, false),
            ),
            title: Text(
              'Delivery Address',
              style: new TextStyle(
                fontFamily: 'Nunito',
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
           
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );
                },
                icon: Icon(Icons.home, color: Colors.white),
                iconSize: 30,
              )
            ],
          ),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
                child: Container(
                  width: width,
                  height: height,
                  color: Colors.white,
                  child:Stack(
                    children: <Widget>[
                       Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                     
                      Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                    image: AssetImage('asset/home.gif'),
                                    fit: BoxFit.cover)),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20.0, top: 10.0),
                                child: TextFormField(
                                  decoration: new InputDecoration(
                                    icon: Icon(
                                      Icons.local_convenience_store,
                                      color: Colors.red[300],
                                    ),
                                    labelText:
                                        'Enter Your Door Number and street name',
                                    labelStyle:
                                        TextStyle(color: Colors.blueGrey),
                                    hintText:
                                        'Enter your door number and street name',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.0, top: 5.0),
                                child: TextFormField(
                                  decoration: new InputDecoration(
                                    icon: Icon(
                                      Icons.location_city,
                                      color: Colors.red[300],
                                    ),
                                    labelText: 'City',
                                    labelStyle:
                                        TextStyle(color: Colors.blueGrey),
                                    hintText: 'Enter your City name',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.0, top: 5.0),
                                child: TextFormField(
                                  decoration: new InputDecoration(
                                    icon: Icon(
                                      Icons.place,
                                      color: Colors.red[300],
                                    ),
                                    labelText: 'State',
                                    labelStyle:
                                        TextStyle(color: Colors.blueGrey),
                                    hintText: 'Enter your State Name',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.0, top: 5.0),
                                child: TextFormField(
                                  decoration: new InputDecoration(
                                    icon: Icon(
                                      Icons.fiber_pin,
                                      color: Colors.red[300],
                                    ),
                                    labelText: 'Pincode',
                                    labelStyle:
                                        TextStyle(color: Colors.blueGrey),
                                    hintText: 'Enter your pincode',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Padding(
                               padding: EdgeInsets.only(top: 10.0),
                               child: Text(
                                    'or',
                                     style: TextStyle(
                                color: Colors.red,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Canterbury'),
                                  ),
                              ),
                               Padding(
                                padding: EdgeInsets.only( top: 10.0),
                                child: InkWell(
                                  onTap: (){
                                     Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bookorder()),
                              );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10),
                                    width: width/1.2,
                                    height: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.red[50],
                                    
                                    ),

                                    child: Stack(
                                      children: <Widget>[
                                        Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                             Padding(
                               padding: EdgeInsets.only(top: 10.0,left: 10),
                               child: Text(
                                    'Choose your saved delivery address',
                                     style: TextStyle(
                                color: Colors.red,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Canterbury'),
                                  ),
                              ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                             Padding(
                               padding: EdgeInsets.only(top: 10.0,left: 10),
                               child: Text(
                                    'Mr.Ram, 50 E Block Nehru nagar',
                                     style: TextStyle(
                                color: Colors.red,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Canterbury'),
                                  ),
                              ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                             Padding(
                               padding: EdgeInsets.only(top: 10.0,left: 10),
                               child: Text(
                                    'Gugai,Salem',
                                     style: TextStyle(
                                color: Colors.red,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Canterbury'),
                                  ),
                              ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                             Padding(
                               padding: EdgeInsets.only(top: 10.0,left: 10),
                               child: Text(
                                    'Tamilnadu',
                                     style: TextStyle(
                                color: Colors.red,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Canterbury'),
                                  ),
                              ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                             Padding(
                               padding: EdgeInsets.only(top: 10.0,left: 10),
                               child: Text(
                                    '636006',
                                     style: TextStyle(
                                color: Colors.red[400],
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Canterbury'),
                                  ),
                              ),
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
                                             IconButton(
                                               onPressed: (){
                                                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bookorder()),
                              );
                                               },
                                               icon: Icon(Icons.check_circle,color:Colors.green),
                                             )
                                           ],
                                         )
                                      ],
                                    )
                                      ],
                                    )
                                  )
                                )
                              ), 
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                         Padding(
                      padding: EdgeInsets.only(bottom: 10.0,top: height/1.5),
                      child: new Material(
                          borderRadius: BorderRadius.circular(10.0),
                          shadowColor: Colors.blue[300],
                          elevation: 10.0,
                          child: MaterialButton(
                            minWidth: 250.0,
                            height: 50.0,
                            color: Colors.redAccent,
                            child: Text('Proceed to payment',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bookorder()),
                              );
                            },
                          )),
                    ),
                      ],
                    )
                    ],
                  )
                    ],
                  )
                ),
              ),
          ],
        ), 
    );
  }
}
