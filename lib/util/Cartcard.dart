import 'package:flutter/material.dart';

class Cartcard extends StatefulWidget{
  static String tag = 'Cartcard ';
  @override 
   _CartcardState createState() => _CartcardState();
}
class _CartcardState extends State<Cartcard>{
  
  Widget build(BuildContext context){
  return Container(
    margin: EdgeInsets.all(10.0),
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomRight: Radius.circular(10.0),
        topRight: Radius.circular(30.0),
        bottomLeft: Radius.circular(30.0),
      ),
      boxShadow: [BoxShadow(color: Colors.orange,blurRadius: 2.0)]
    ),
    child: Stack(
      children: <Widget>[
       
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Column(
                children: <Widget>[
                   Container(
                         margin: EdgeInsets.all(10.0),
                         width: 80,
                         height: 80,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage('asset/oran.jpg'),
                             fit: BoxFit.cover,
                           ),
                           borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0),bottomRight: Radius.circular(5.0),bottomLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
                         ),
                       )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                   
                       Padding(
                     padding: EdgeInsets.only(top: 10.0),
                     child:Text('Orange - XX Traders',
                                                        style: TextStyle(
                                                            fontSize: 18.0,
                                                            color: Colors
                                                                .orange[900],
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                   ),
                   Padding(
                     padding: EdgeInsets.only(top: 10.0),
                     child:Text('Rs.300/2KG',
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Colors
                                                                .blueGrey,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                   ),
                   Padding(
                     padding: EdgeInsets.only(top: 10.0),
                     child:InkWell(
                       onTap: (){

                       },
                       child: Text('Confirm Order',
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Colors
                                                                .orange,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                     )
                   ) 
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                   Padding(
                     padding: EdgeInsets.only(left: 25.0),
                     child:IconButton(
                                                      onPressed: (){

                                                      },
                                                      icon: Icon(Icons.delete,),
                                                      iconSize: 25.0,
                                                      color: Colors.orange,
                                                    )
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 25.0),
                     child:IconButton(
                                                      onPressed: (){

                                                      },
                                                      icon: Icon(Icons.favorite_border,),
                                                      iconSize: 25.0,
                                                      color: Colors.red,
                                                    )
                   ),
                ],
              )
              ],
            )
          
      ],
    ),
  );
  }
}