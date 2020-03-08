import 'package:e_com/screens/Homescreen.dart';
import 'package:flutter/material.dart';

class Writereview extends StatefulWidget{
  static String tag = 'Writereview';
  @override 
   _WritereviewState createState() => _WritereviewState();
}
class _WritereviewState extends State<Writereview>{
  
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
     resizeToAvoidBottomPadding: false,
    appBar: AppBar(
       backgroundColor: Color(0XFFFE4040),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 20.0,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
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
          title: Text('Write a Review',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600)),
    ),
     body:Stack(
       children: <Widget>[
         Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Container(
             margin: EdgeInsets.all(20.0),
             width: width/1.2,
             height: 150,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [BoxShadow(color: Color(0XFFFE4040),blurRadius: 1.0)]
             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Text('Write your review',style:TextStyle(fontSize: 14.0,color:Colors.blueGrey,fontWeight:FontWeight.w300))
                   ],
                 )
               ],
             ),
           )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
           Padding(
             padding: EdgeInsets.only(top: 20.0,left: 45.0),
             child: Text('Rating',style:TextStyle(fontSize: 20.0,color:Colors.red[900],fontWeight:FontWeight.w600))
           ),
           Padding(
             padding: EdgeInsets.only(top: 20.0,left: 20),
             child:IconButton(onPressed: (){

             },icon: Icon(Icons.star_border),color: Colors.green,iconSize: 30,)
           ),
           Padding(
             padding: EdgeInsets.only(top: 20.0,),
             child: IconButton(onPressed: (){
               
             },icon: Icon(Icons.star_border),color: Colors.green,iconSize: 30)
           ),
           Padding(
             padding: EdgeInsets.only(top: 20.0),
             child: IconButton(onPressed: (){
               
             },icon: Icon(Icons.star_border),color: Colors.green,iconSize: 30)
           ),
           Padding(
             padding: EdgeInsets.only(top: 20.0),
             child: IconButton(onPressed: (){
               
             },icon: Icon(Icons.star_border),color: Colors.green,iconSize: 30)
           ),
           Padding(
             padding: EdgeInsets.only(top: 20.0),
             child: IconButton(onPressed: (){
               
             },icon: Icon(Icons.star_border),color: Colors.green,iconSize: 30)
           )
          ],
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
             padding: EdgeInsets.only(top: 30.0,left: 100.0),
             child:IconButton(onPressed: (){

             },icon: Icon(Icons.add_a_photo),color: Colors.red,iconSize: 30,)
           ),
           Padding(
             padding: EdgeInsets.only(top: 30.0,),
             child: Text('Upload Images or Videos',style:TextStyle(fontSize: 14.0,color:Colors.red,fontWeight:FontWeight.w400))
           ),
           ],),
           Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
             padding: EdgeInsets.only(top: 50.0,),
             child:  new Material(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                10.0),
                                                                        shadowColor:
                                                                            Colors.blue[
                                                                                300],
                                                                        elevation:
                                                                            10.0,
                                                                        child:
                                                                            MaterialButton(
                                                                          minWidth:
                                                                              150.0,
                                                                          height:
                                                                              50.0,
                                                                          color:
                                                                              Colors.redAccent,
                                                                          child:
                                                                              Text('Submit',style:TextStyle(fontSize: 16.0,color:Colors.white,fontWeight:FontWeight.w400)),
                                                                          onPressed:
                                                                              () {
                                                                            
                                                                          },
                                                                        )),
           ),
           
           ],),
       ],
     ),
       ],
     )
    );
  }
}