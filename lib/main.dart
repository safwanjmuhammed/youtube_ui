import 'package:flutter/material.dart';

import 'appbars.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        accentColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget eachvideo(String asset, String title, String subtitle) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset(asset),
            Positioned.fill(
              bottom: 10.0,
              right: 10.0,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    "20:10",
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          color: Colors.black,
          child: ListTile(
            leading: Icon(Icons.account_circle,size: 40,),
            title: Text(
              "$title",
              textAlign: TextAlign.start,
            ),
            subtitle: Text(
              "$subtitle",
            ),
            trailing: Icon(Icons.more_vert, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 10.0,
          child: Container(
            color: Colors.black,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar,
      bottomNavigationBar: bottomappbar,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            eachvideo(
                "assets/images/images.png", "Working With Databases In Youtube","GeekWhat  . 25 lacks . 1  day ago"),
            eachvideo(
                "assets/images/images.png", "Working With Databases In Flutter",""),
            eachvideo(
                "assets/images/images.png", "Working With Databases In Flutter",""),
            eachvideo(
                "assets/images/images.png", "Working With Databases In Flutter",""),
            eachvideo(
                "assets/images/images.png", "Working With Databases In Flutter",""),
          ],
        ),
      ),
    );
  }
}
