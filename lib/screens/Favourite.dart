import 'package:e_com/screens/Homescreen.dart';
import 'package:e_com/screens/Mycart.dart';
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget{
  static String tag = 'Favourite';
  @override 
   _FavouriteState createState() => _FavouriteState();
}
class _FavouriteState extends State<Favourite>{
  
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
                              MaterialPageRoute(
                                  builder: (context) => Homescreen()),
                            );
                          },
                        )
          ],
          title: Text('My Wishlist',
              style: TextStyle(
                  color: Color(0XFFFE4040),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600)),
        ),
     body: Stack(
       children: <Widget>[
         Padding(
           padding: EdgeInsets.all(15.0),
           child: ListView(
             scrollDirection: Axis.vertical,
             children: <Widget>[
              Cartcard(),
              Cartcard(),
              Cartcard(),
              Cartcard(),
              Cartcard(),
              Cartcard(),
              Cartcard(),
             
             ],
           ),
         )
       ],
     )
    );
  }
}
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
      boxShadow: [BoxShadow(color: Color(0XFFFE4040),blurRadius: 2.0)]
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
                                                                .red[900],
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
                       Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Mycart()),
        );
                       },
                       child: Text('Add to Cart',
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Color(0XFFFE4040),
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
                                                      color: Color(0XFFFE4040),
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
            ),
         
      ],
    ),
  );
  }
}