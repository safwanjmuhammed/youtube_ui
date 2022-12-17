import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
      title: 'youtube',
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          //elevation: 0,
          title: Image.asset(
            'images/youtube.png',
            height: 125,
            width: 200,
            //alignment: Alignment.centerLeft,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage("images/avatar.jpeg"),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Stack(children: <Widget>[
              Image.asset("images/images.png"),
              Positioned.fill(
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: EdgeInsets.all(4.0),
                        child: Text("7:8"),
                        color: Colors.white,
                      )))
            ])
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
            //unselectedItemColor: Colors.white,
            //selectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline),
                label: 'Add',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions),
                label: 'Subscriptions',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_file),
                label: 'Library',
              ),
            ]));
  }
}
//testsync