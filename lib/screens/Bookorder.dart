import 'package:e_com/screens/Homescreen.dart';
import 'package:e_com/widgets/Ordernotify.dart';

import 'package:flutter/material.dart';

class Bookorder extends StatefulWidget {
  static String tag = 'Bookorder';
  @override
  _BookorderState createState() => _BookorderState();
}

class _BookorderState extends State<Bookorder>
    with SingleTickerProviderStateMixin {
  final scaffoldkey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFFE4040),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context, false),
        ),
        title: Text(
          'Payment',
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
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 30.0, left: 20.0),
                            child: Text(
                              'Choose your payment option',
                              style: new TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFFE4040),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Container(
                                  width: width / 1.5,
                                  height: height / 1.5,
                                  color: Colors.white,
                                  child: InkWell(
                                    onTap: () {
                                          Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              Ordernotify()),
                                                                );
                                        },
                                    child: ListWheelScrollView(
                                    itemExtent: 150,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              Ordernotify()),
                                                                );
                                        },
                                        child: Container(
                                          width: width / 1.5,
                                          height: height / 2.0,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.orange,
                                                    blurRadius: 2.0)
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'asset/credit.png'),
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          
                                        },
                                        child: Container(
                                          width: width / 1.5,
                                          height: height / 2.0,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.orange,
                                                    blurRadius: 2.0)
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'asset/debit.png'),
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                           
                                        },
                                        child: Container(
                                          margin: EdgeInsets.all(5.0),
                                          width: width / 1.5,
                                          height: height / 2.0,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.green,
                                                    blurRadius: 1.0)
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'asset/googlepay.png'),
                                                fit: BoxFit.contain,
                                              )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                           
                                        },
                                        child: Container(
                                          margin: EdgeInsets.all(5.0),
                                          width: width / 1.5,
                                          height: height / 2.0,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.lightBlue,
                                                    blurRadius: 1.0)
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'asset/paypal.png'),
                                                fit: BoxFit.contain,
                                              )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          
                                        },
                                        child: Container(
                                          margin: EdgeInsets.all(5.0),
                                          width: width / 1.5,
                                          height: height / 2.0,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.blueAccent,
                                                    blurRadius: 1.0)
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'asset/paytm.png'),
                                                fit: BoxFit.contain,
                                              )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          
                                        },
                                        child: Container(
                                          margin: EdgeInsets.all(5.0),
                                          width: width / 1.5,
                                          height: height / 2.0,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.deepPurple,
                                                    blurRadius: 2.0)
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'asset/phone.jpg'),
                                                fit: BoxFit.contain,
                                              )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          
                                        },
                                        child: Container(
                                          margin: EdgeInsets.all(5.0),
                                          width: width / 1.5,
                                          height: height / 2.0,
                                          decoration: BoxDecoration(
                                              color: Colors.deepPurple[900],
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.blueGrey,
                                                    blurRadius: 2.0)
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'asset/netbank.png'),
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                      ),
                                     
                                    ],
                                  ),
                                  )))
                        ],
                      )
                    ],
                  ),
                 
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
