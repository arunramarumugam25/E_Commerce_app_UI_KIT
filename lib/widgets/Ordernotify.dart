import 'package:e_com/util/Trackorder.dart';
import 'package:flutter/material.dart';

class Ordernotify extends StatefulWidget{
  static String tag = 'Ordernotify';
  @override 
   _OrdernotifyState createState() => _OrdernotifyState();
}
class _OrdernotifyState extends State<Ordernotify>{
  
  Widget build(BuildContext context){
    return Scaffold(
     backgroundColor: Colors.white,
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
                  borderRadius: BorderRadius.circular(200.0),
                  image: DecorationImage(
                    image: AssetImage('asset/car.gif'),
                    fit: BoxFit.cover
                  )
                ),
              )
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text('Order Successful !',
              style: TextStyle(
                  color: Color(0XFFFE4040),
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600)),
              )
             ],
           )
         ],
       ) ,
       Column(
         mainAxisAlignment: MainAxisAlignment.end,
         children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            InkWell(
              onTap: (){
                Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Trackorder()),
                            );
              },
              child: Container(
              margin: EdgeInsets.only(bottom: 20.0),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0XFFFE4040)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.directions_bus,color: Colors.white,),
                   Padding(
                     padding: EdgeInsets.only(left: 10.0),
                     child:  Text('Track Your Order',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400)),
                   )
                    ],
                  )
                ],
              ),
            ),
            )
            ],
          )
         ],
       )
       ],
     )
    );
  }
}