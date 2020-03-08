import 'package:e_com/screens/Homescreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  static String tag = 'Notifications';
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
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
                color:Color(0XFFFE4040),
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
          title: Text('Notifications',
              style: TextStyle(
                  color: Color(0XFFFE4040),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600)),
        ),
        body: Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];

                return Dismissible(
                  key: Key(item),
                  onDismissed: (direction) {
                    setState(() {
                      items.removeAt(index);
                    });

                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text("Notification dismissed")));
                  },
                  background: Container(color: Colors.red),
                  child: Notecard(),
                );
              },
            ),
          ],
        ));
  }
}
//widget for showing notifications
class Notecard extends StatefulWidget {
  static String tag = 'Notecard';
  Notecard({Key key}) : super(key: key);
  @override
  _NotecardState createState() => _NotecardState();
}

class _NotecardState extends State<Notecard> {
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(10.0),
      width: width,
      height: 100,
      decoration: BoxDecoration(
          color: Color(0XFFFE4040),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(color: Colors.deepOrange[900], blurRadius: 2.0)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('asset/apple.png'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Two kg apples for 250rs only\n-Arun merchants',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20.0, bottom: 5.0),
                child: Text('25 Minutes ago',
                    style: TextStyle(
                        color: Colors.red[100],
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300)),
              )
            ],
          )
        ],
      ),
    );
  }
}
