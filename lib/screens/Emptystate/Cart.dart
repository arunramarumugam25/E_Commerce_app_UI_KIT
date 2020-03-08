import 'package:e_com/screens/Homescreen.dart';
import 'package:flutter/material.dart';

class Cartempty extends StatefulWidget{
  static String tag = 'Cartempty';
  @override 
   _CartemptyState createState() => _CartemptyState();
}
class _CartemptyState extends State<Cartempty>{
  
  Widget build(BuildContext context){
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
         Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Container(
             width: 150,
             height: 150,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(100),
               image: DecorationImage(
                 image: AssetImage('asset/cart.gif'),
                 fit: BoxFit.cover,
               )
             ),
           )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Padding(
             padding: EdgeInsets.only(top: 30.0),
             child: Text('Your Cart is Empty',style:TextStyle(fontSize: 14.0,color:Colors.orange[400],fontWeight:FontWeight.w400))
           )
          ],
        ),
       ],
     ),
       ],
     )
    );
  }
}