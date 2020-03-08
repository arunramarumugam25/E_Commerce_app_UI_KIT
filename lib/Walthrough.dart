import 'package:e_com/screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/services.dart';
class Walkthrough extends StatefulWidget {

  @override
  _WalkthroughState createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  
  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
   children: <Widget>[
     AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.red[100] : Color(0XFFFE4040),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    )
   ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          /*  gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Colors.orange[700],
                Colors.orange[500],
                Colors.orange[300],
                Colors.orange[200],
              ],
            ),*/
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context, PageTransition(type: PageTransitionType.downToUp,duration: Duration(milliseconds: 1300), child: Login()));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Color(0XFFFE4040),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 580.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'asset/one.png',
                                ),
                                height: 280.0,
                                width: 280.0,
                              ),
                            ),
                            SizedBox(height: 40.0),
                            Text(
                              'Healthy Shopping',
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontFamily: 'Roboto',fontSize: 20,fontWeight: FontWeight.w600,color: Color(0XFFFE4040)),
                            ),
                            SizedBox(height: 2.0),
                            Text(
                              '\nPurchase natural fruits and vegetables from your home Loreum epsum oreum epsum oreum epsum oreum epsum oreum epsum oreum epsum oreum epsum.',
                              textAlign: TextAlign.justify,
                              style:TextStyle(fontFamily: 'Roboto',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.red[200]),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Container(
                                width: 280,
                                height: 280,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/two.jpg'),
                                    fit: BoxFit.cover
                                  )
                                ),
                              )
                            ),
                            SizedBox(height: 40.0),
                            Text(
                              'Timely Delivery',
                              style: TextStyle(fontFamily: 'Roboto',fontSize: 20,fontWeight: FontWeight.w600,color: Color(0XFFFE4040)),
                            ),
                            SizedBox(height: 2.0),
                            Text(
                              '\nGet your needs fulfilled in your home with quicker delivery Loreum epsum oreum epsum oreum epsum oreum epsum oreum epsum oreum epsum oreum epsum.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontFamily: 'Roboto',fontSize: 16,fontWeight: FontWeight.w600,color: Colors.red[200]),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'asset/three.png',
                                ),
                                height: 280.0,
                                width: 280.0,
                              ),
                            ),
                            SizedBox(height: 40.0),
                            Text(
                              'Great deals',
                              style: TextStyle(fontFamily: 'Roboto',fontSize: 20,fontWeight: FontWeight.w600,color: Color(0XFFFE4040)),
                            ),
                            SizedBox(height: 2.0),
                            Text(
                              '\nBuy your needs with weekly and monthly offers Loreum epsum oreum epsum oreum epsum oreum epsum oreum epsum oreum epsum oreum epsum.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontFamily: 'Roboto',fontSize: 16,fontWeight: FontWeight.w600,color: Colors.red[200]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
               
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 110.0,
              width: double.infinity,
              color: Colors.white,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, PageTransition(type: PageTransitionType.downToUp,duration: Duration(milliseconds: 1300), child: Login()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                 children: <Widget>[
                   Container(
                    width: width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0XFFFE4040),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Get started',style:TextStyle(fontSize:16,color:Colors.white,fontWeight:FontWeight.w700))
                          ],
                        )
                      ],
                    ),
                  )
                 ],
                ),
              ),
            )
          : Text(''),
    );
  }
}