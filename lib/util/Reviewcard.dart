import 'package:e_com/Sub_widgets/Categorylist.dart';
import 'package:e_com/Sub_widgets/Reviewlist.dart';
import 'package:e_com/screens/Emptystate/Cart.dart';
import 'package:e_com/screens/Homescreen.dart';
import 'package:e_com/util/Writereview.dart';
import 'package:flutter/material.dart';

class Reviewcard extends StatefulWidget{
  static String tag = 'Reviewcard';
  @override 
   _ReviewcardState createState() => _ReviewcardState();
}
class _ReviewcardState extends State<Reviewcard>{
  
  Widget build(BuildContext context){
     double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
    resizeToAvoidBottomPadding: false,
    appBar: AppBar(
       backgroundColor: Colors.orange,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 20.0,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          
          title: Text('Rate & Reviews',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600)),
    ),
    bottomNavigationBar: InkWell(
      onTap: (){
         Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Writereview()),
                );
      },
     child: Container(
      width: width,
      height: 50,
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             Text('Add your review',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600)),  
            ],
          )
        ],
      ),
    ),
    ),
    body: Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Padding(
                 padding: EdgeInsets.only(top: 20.0),
                 child: Container(
                   width:width/1.2 ,
                   height: 180,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10.0),
                     color: Colors.white,
                     boxShadow: [BoxShadow(color: Colors.orange,blurRadius: 2.0)]
                   ),
                   child: Stack(
                     children: <Widget>[
                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: <Widget>[
                           Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: <Widget>[
                               Padding(
                                 padding: EdgeInsets.only(left: 45.0,top: 30.0),
                                 child: Icon(Icons.star,color:Colors.yellow,size:80),
                               )
                             ],
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: <Widget>[
                               Padding(
                                 padding: EdgeInsets.only(left: 35.0,top: 10.0),
                                 child: Text('Average Rating',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500)),
                               )
                             ],
                           ),
                           Row(
                             children: <Widget>[
                               Padding(
                                 padding: EdgeInsets.only(left: 20.0,top: 10.0),
                                 child: Text('Pay scale as per user choice',
              style: TextStyle(
                  color: Colors.orange[900],
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300)),
                               )
                             ],
                           )
                         ],
                       ),
                        Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: <Widget>[
                          
                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: <Widget>[
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 30.0),
                                 child: Text('5',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500)),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 30.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 30.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 30.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 30.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 30.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               )
                             ],
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: <Widget>[
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Text('4',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500)),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star_border,color:Colors.green,size: 14,)
                               )
                             ],
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: <Widget>[
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Text('3',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500)),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star_border,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star_border,color:Colors.green,size: 14,)
                               )
                             ],
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: <Widget>[
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Text('2',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500)),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star_border,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star_border,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star_border,color:Colors.green,size: 14,)
                               )
                             ],
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: <Widget>[
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Text('1',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500)),
                               ),
                              Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star_border,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star_border,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star_border,color:Colors.green,size: 14,)
                               ),
                                Padding(
                                 padding: EdgeInsets.only(right: 10.0,top: 10.0),
                                 child: Icon(Icons.star_border,color:Colors.green,size: 14,)
                               )
                             ],
                           )
                         ],
                       )
                     ],
                   ),
                 ),
               )
              ],
            ),
           Row(
             mainAxisAlignment:MainAxisAlignment.start,
             children: <Widget>[
               Reviewlist(),
             ],
           )
              
          ],
        ),
        
      ],
    ),
    );
  }
}