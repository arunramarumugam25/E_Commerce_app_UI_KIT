import 'dart:async';
import 'package:e_com/Walthrough.dart';
import 'package:flutter/material.dart';
class Splashscreen extends StatefulWidget {
  static String tag = 'SplashScreen';
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> with TickerProviderStateMixin {
  
 Route _createRoute(){
   return PageRouteBuilder<dynamic>(
   pageBuilder: (context,animation,secondaryAnimation) => Walkthrough(),
   transitionsBuilder: (context, animation, secondaryAnimation, child) {
     Duration(seconds: 2);
     return FadeTransition(
     opacity: animation,
     child: ScaleTransition(
      alignment: Alignment.center,
      scale: animation,
       child: child,
     )
     );
    },
   );
  }
  
  @override
   void initState() {
    // TODO: implement intstate
    super.initState();
  Timer(Duration(seconds: 5), () => Navigator.of(context).push(_createRoute()));
  } 
  
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
 final width =size.width;
 final height =size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
         Container( 
           decoration:BoxDecoration(
             image:DecorationImage(
               image:AssetImage('asset/spalshicon.gif'),
               fit:BoxFit.cover,
             ),
           ),
           
         )
        ],
      ),
    );
  }
}
