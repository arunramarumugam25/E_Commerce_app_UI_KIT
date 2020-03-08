import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_com/Sub_widgets/Reviewlist.dart';
import 'package:e_com/screens/Mycart.dart';
import 'package:e_com/util/Writereview.dart';
import 'package:flutter/material.dart';

class Secondarydetail extends StatefulWidget {
  static String tag = 'Secondarydetail';
  @override
  _SecondarydetailState createState() => _SecondarydetailState();
}

class _SecondarydetailState extends State<Secondarydetail> with SingleTickerProviderStateMixin {
  bool viewVisible = false;
  var _alignment = Alignment.bottomCenter;
  void showWidget() {
    setState(() {
      viewVisible = true;
      _alignment = Alignment.center;
    });
  }

  void hideWidget() {
    setState(() {
      viewVisible = false;
    });
  }

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
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
      bottomNavigationBar: Container(
          width: width,
          height: height / 15,
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          showWidget();
                        },
                        child: Container(
                          width: width / 1.9,
                          height: height / 15,
                          decoration: BoxDecoration(
                              color: Colors.red[100],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                // bottomLeft: Radius.circular(10.0)
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.shopping_cart,
                                    color: Colors.red[900],
                                    size: 30,
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Text('Add to cart',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Colors.red[900],
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w500))),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Mycart()),
                          );
                        },
                        child: Container(
                          width: width / 1.9,
                          height: height / 15,
                          decoration: BoxDecoration(
                              color: Color(0XFFFE4040),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                // bottomRight: Radius.circular(10.0)
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Buy now',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500))
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          )),
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      width: width,
                      height: height / 10,
                      color: Color(0XFFFE4040),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0, bottom: 5.0),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      icon: Icon(Icons.arrow_back),
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 10.0, bottom: 5.0),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite_border),
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 10.0, bottom: 5.0),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.shopping_cart),
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ))
                ],
              ),
              Row(
                children: <Widget>[
                  Hero(
                    tag: Secondarydetail,
                    child: Container(
                      width: width,
                      height: 220,
                      color: Color(0XFFFE4040),
                      child: CarouselSlider(
                          height: 200.0,
                         
                          enableInfiniteScroll: true,
                          reverse: false,
                         
                          items: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              margin: EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage('asset/oran.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              margin: EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage('asset/o1.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              margin: EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage('asset/o2.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              margin: EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage('asset/o3.jpg'),
                                      fit: BoxFit.cover)),
                            )
                          ])),
                  )
                ],
              ),
              Row(children: <Widget>[
                Container(
                  width: width,
                  height: height / 1.87,
                  color: Colors.white,
                  child: MaterialApp(
                    home: DefaultTabController(
                      length: 2,
                      child: Scaffold(
                        backgroundColor: Colors.white,
                        appBar: PreferredSize(
                          preferredSize: new Size(width, 30),
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            color: Colors.white,
                            width: width,
                            height: 40,
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
                                  height: 40.0,
                                  child: new Tab(
                                    child: Text('Product Details',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ),
                                new Container(
                                  height: 40.0,
                                  child: new Tab(
                                    child: Text('Rate & Reviews',
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
                              height: height / 2.5,
                              color: Colors.white,
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 30.0),
                                            child: Text(
                                              'Orange',
                                              style: TextStyle(
                                                  color: Color(0XFFFE4040),
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Canterbury'),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 30.0, top: 5.0),
                                            child: Text(
                                              'Best seller,Tamilnadu',
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Canterbury'),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 10.0, left: 30.0),
                                            child: Text(
                                              'Product Details',
                                              style: TextStyle(
                                                  color: Colors.red[900],
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Canterbury'),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10.0, left: 30.0),
                                              child: Container(
                                                  width: 310,
                                                  child: Text(
                                                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: TextStyle(
                                                          color:
                                                              Colors.red[900],
                                                          fontSize: 12.0,
                                                          fontWeight: FontWeight
                                                              .w300)))),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10.0, left: 30.0),
                                              child: Container(
                                                  width: 310,
                                                  child: Text(
                                                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: TextStyle(
                                                          color:
                                                              Colors.red[900],
                                                          fontSize: 12.0,
                                                          fontWeight: FontWeight
                                                              .w300)))),
                                        ],
                                      ),
                                       Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(top: 5.0, right: 30.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Writereview()),
                              );
                            },
                            child:Row(
                              children: <Widget>[
                                 Text('Write your review',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.red[800],
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500)),
                                   IconButton(icon: Icon(Icons.arrow_forward),color:Colors.red[800] ,onPressed: (){
                                     Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Writereview()),
                              );
                                   },)
                              ],
                            )
                          )),
                    ],
                  ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 30.0),
                                              child: Text('Rs.150/KG',
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w500))),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: width,
                              height: height / 2.5,
                              color: Colors.white,
                              child: Reviewlist(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ])
            ],
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Visibility(
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                visible: viewVisible,
                child: AnimatedContainer(
                 // padding: EdgeInsets.all(10.0),
        duration: Duration(seconds: 3),
        curve: Curves.easeInCubic,
        alignment: _alignment,
                child:Container(
                  width: width,
                  height: height / 2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                              BoxShadow(color: Colors.blueGrey, blurRadius: 100.0)
                            ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(80),
                          topRight: Radius.circular(80))),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 30.0, left: 30.0),
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: DecorationImage(
                                        image: AssetImage('asset/oran.jpg'),
                                        fit: BoxFit.cover)),
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
                                padding:
                                    EdgeInsets.only(top: 40.0, right: 30.0),
                                child: Text(
                                  'Orange',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Canterbury'),
                                ),
                              ),
                            ], ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, right: 30.0),
                                child: Text(
                                  'Best seller,Tamilnadu',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Canterbury'),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, right: 30.0),
                                child: Text(
                                  'RS.150 Per KG',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Canterbury'),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 20.0, left: 30.0),
                                child: Text(
                                  'Product Details',
                                  style: TextStyle(
                                      color: Colors.red[900],
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Canterbury'),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 10.0, left: 30.0),
                                  child: Container(
                                      width: width / 1.2,
                                      child: Text(
                                          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Colors.red[900],
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w300)))),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Select Quantity',
                                style: TextStyle(
                                    color: Color(0XFFFE4040),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Canterbury'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 20.0, bottom: 10.0,),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.remove_circle_outline,
                                    color: Colors.red[900],
                                    size: 30,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 20.0, left: 30.0, bottom: 10.0),
                                  child: Text('1',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          color: Color(0XFFFE4040),
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600))),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 20.0, left: 30.0, bottom: 10.0),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.add_circle_outline,
                                    color: Colors.red[900],
                                    size: 30,
                                  ),
                                  onPressed: () {},
                                ),
                              ),

                            ],
                          ),
                         
                        ],
                      )
                    ],
                  ),
                )
              )
              )
            ],
          )
        ],
      ),
    );
  }
}
