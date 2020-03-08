import 'package:e_com/screens/Homescreen.dart';
import 'package:e_com/screens/Profile.dart';
import 'package:flutter/material.dart';

class Edit extends StatefulWidget{
  static String tag = 'Edit';
  @override 
   _EditState createState() => _EditState();
}
class _EditState extends State<Edit>{
  final scaffoldkey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  Widget build(BuildContext context){
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
                              MaterialPageRoute(
                                  builder: (context) => Homescreen()),
                            );
                          },
                        )
          ],
          title: Text('Edit Profile',
              style: TextStyle(
                  color: Color(0XFFFE4040),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600)),
        ),
     body: SingleChildScrollView(
     child:Stack(
       children: <Widget>[
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
           
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 40.0),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/man.png'),
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
                      padding: EdgeInsets.only(left: 50, right: 50, top:height/2.9),
                      child: TextFormField(
                        decoration: new InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(color: Colors.red[100]),
                          hintText: 'Username',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50, right: 50, top:height/15),
                      child: TextFormField(
                        decoration: new InputDecoration(
                          labelText: 'Mail ID',
                          labelStyle: TextStyle(color: Colors.red[100]),
                          hintText: 'User mail id',
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
                                  child: Text('Update',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),),
                                  onPressed: () {
                                    Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(builder: (context) => Profile()),
                                                                            );
                                  },
                                ))))
                  ],
                ))
          ],
        )  
       ]
     )
     )
    );
  }
}