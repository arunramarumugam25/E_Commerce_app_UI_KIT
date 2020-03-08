import 'package:e_com/util/Productcard.dart';
import 'package:flutter/material.dart';

class Productlist extends StatefulWidget{
  static String tag = 'Productlist';
  @override 
   _ProductlistState createState() => _ProductlistState();
}
class _ProductlistState extends State<Productlist>{
  
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    return Container(
                    margin: EdgeInsets.only(
                      top: 150,bottom: 10.0
                    ),
                    width: width,
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Product(),
                        //Product(),
                       
                      ],
                    ),
                  );
  }
}