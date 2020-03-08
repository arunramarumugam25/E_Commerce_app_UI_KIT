import 'package:flutter/material.dart';

class Reset extends StatefulWidget {
  static String tag = 'Reset';
  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  final scaffoldkey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage('asset/reset.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                  )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Text(
                    'Link to Reset Your Password has been\n\n Sent to Your Mail id Successfully.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFFFE4040)),
                  ),
                )
              ],
            ),
          ],
        ),
       
      ],
    ));
  }
}
