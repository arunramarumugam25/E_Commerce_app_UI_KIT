import 'package:e_com/util/Reset.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  static String tag = 'ForgetPassword';
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final scaffoldkey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 100.0),
                  child: Text(
                    'Forget Password',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),
                  ),
                )
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/lock.png'),
                        fit: BoxFit.cover
                      )
                    ),
                  )
                )
              ],
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 50, right: 50, top:height/1.9),
                      child: TextFormField(
                        decoration: new InputDecoration(
                          labelText: 'Enter your Email Address',
                          labelStyle: TextStyle(color: Colors.red[100]),
                          hintText: 'you@example.com',
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 50, right: 50, top: 50),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 50),
                            width: 250,
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
                                  child: Text('Send Reset Link',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),),
                                  onPressed: () {
                                    Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(builder: (context) => Reset()),
                                                                            );
                                  },
                                ))))
                  ],
                ))
          ],
        )
      ],
    ),
        )
    );
  }
}
