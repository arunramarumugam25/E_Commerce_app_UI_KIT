import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:e_com/screens/Homescreen.dart';
import 'package:e_com/util/Trackorder.dart';
import 'package:flutter/material.dart';

class Myorder extends StatefulWidget {
  static String tag = 'Myorder';
  @override
  _MyorderState createState() => _MyorderState();
}

class _MyorderState extends State<Myorder> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
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
                  MaterialPageRoute(builder: (context) => Homescreen()),
                );
              },
            )
          ],
          title: Text('My Orders',
              style: TextStyle(
                  color: Color(0XFFFE4040),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600)),
        ),
        body: Stack(
          children: <Widget>[
            Row(children: <Widget>[
              Container(
                width: width,
                height: height,
                color: Colors.white,
                child: MaterialApp(
                  home: DefaultTabController(
                    length: 5,
                    child: Scaffold(
                      backgroundColor: Colors.white,
                      appBar: PreferredSize(
                        preferredSize: new Size(width, 30),
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          color: Colors.white,
                          width: width,
                          height: 50,
                          child: new TabBar(
                            isScrollable: true,
                            unselectedLabelColor: Colors.red[300],
                            labelColor: Colors.white,
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicator: new BubbleTabIndicator(
                              indicatorHeight: 30.0,
                              indicatorColor: Color(0XFFFE4040),
                              tabBarIndicatorSize: TabBarIndicatorSize.tab,
                            ),
                            tabs: [
                              new Container(
                                height: 50.0,
                                child: new Tab(
                                  child: Text('All',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400)),

                                ),
                              ),
                              new Container(
                                height: 50.0,
                                child: new Tab(
                                  child: Text('Unpaid',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                              new Container(
                                height: 50.0,
                                child: new Tab(
                                  child: Text('Shipped',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                              new Container(
                                height: 50.0,
                                child: new Tab(
                                  child: Text('To be shipped',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                              new Container(
                                height: 50.0,
                                child: new Tab(
                                  child: Text('In dispute',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                            ],
                            controller: _tabController,
                          ),
                        ),
                      ),
                      body: new TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          Container(
                            width: width,
                            height: height,
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                children: <Widget>[
                                  Cartcard(),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: width,
                            height: height,
                            color: Colors.white,
                             child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                children: <Widget>[
                                  Cartcard(),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: width,
                            height: height,
                            color: Colors.white,
                             child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                children: <Widget>[
                                  Cartcard(),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: width,
                            height: height,
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                children: <Widget>[
                                  Cartcard(),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: width,
                            height: height,
                            color: Colors.white,
                             child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                children: <Widget>[
                                  Cartcard(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ]),
          ],
        ));
  }
}
class Cartcard extends StatefulWidget {
  static String tag = 'Cartcard ';
  @override
  _CartcardState createState() => _CartcardState();
}

class _CartcardState extends State<Cartcard> {
  
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      color: Colors.white,
    child: Column(
      children: <Widget>[
        InkWell(
            onTap: (){
             
            },
            child: Row(
          children: <Widget>[
             Container(
               width: width/1.2,
      margin: EdgeInsets.all(10.0),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.red[100],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
          ),
          boxShadow: [BoxShadow(color: Color(0XFFFE4040), blurRadius: 3.0)]),
          child: Stack(
            children: <Widget>[
              Column(
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
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                            bottomLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0))),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text('Orange - XX Traders',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.red[900],
                            fontWeight: FontWeight.w700)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text('Rs.300/2KG',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Row(
                        children: <Widget>[
                          
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child:Text('2019/11/25 , GA25250311',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.red[900],
                            fontWeight: FontWeight.w400)),
                          ),
                          
                        ],
                      )),
                ],
              ),
             
            ],
          ),
                ],
              )
            ],
          ),
             )
          ]
        ),
        ),
       InkWell(
         onTap: (){
          
         },
         child: Row(
          children: <Widget>[
             Container(
                width: width/1.2,
      margin: EdgeInsets.all(10.0),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.red[100],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
          ),
          boxShadow: [BoxShadow(color: Color(0XFFFE4040), blurRadius: 3.0)]),
          child: Stack(
            children: <Widget>[
              Column(
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
                          image: AssetImage('asset/p4.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                            bottomLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0))),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text('Orange - XX Traders',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.red[900],
                            fontWeight: FontWeight.w700)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text('Rs.300/2KG',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Row(
                        children: <Widget>[
                          
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child:Text('2019/11/25 , GA25250311',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.red[900],
                            fontWeight: FontWeight.w400)),
                          ),
                          
                        ],
                      )),
                ],
              ),
            
            ],
          ),
                ],
              )
            ],
          ),
             )
          ]
        ),
       ),
      InkWell(
        onTap: (){
          
        },
        child:   Row(
          children: <Widget>[
             Container(
                width: width/1.2,
      margin: EdgeInsets.all(10.0),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.red[100],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
          ),
          boxShadow: [BoxShadow(color: Color(0XFFFE4040), blurRadius: 3.0)]),
          child: Stack(
            children: <Widget>[
              Column(
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
                          image: AssetImage('asset/p3.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                            bottomLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0))),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text('Orange - XX Traders',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.red[900],
                            fontWeight: FontWeight.w700)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text('Rs.300/2KG',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Row(
                        children: <Widget>[
                          
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child:Text('2019/11/25 , GA25250311',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.red[900],
                            fontWeight: FontWeight.w400)),
                          ),
                          
                        ],
                      )),
                ],
              ),
            
            ],
          ),
                ],
              )
            ],
          ),
             )
          ]
        ),
      )
      ]
        ), 
        );
  }
}
