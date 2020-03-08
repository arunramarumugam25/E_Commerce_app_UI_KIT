import 'package:flutter/material.dart';
import 'package:e_com/screens/Login.dart';
import 'package:e_com/screens/spalshscreen.dart';
final routes = <String, WidgetBuilder>{
 Login.tag: (context) => Login(),
 
};
void main() => runApp(new MaterialApp(
    
    debugShowCheckedModeBanner: false,
    home: Splashscreen(), //Routing for Splashscreen
   routes: routes
  )
  
  );