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
            'assets/images/youtube.png',
            height: 125,
            width: 200,
            //alignment: Alignment.centerLeft,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  "https://cdn.imgbin.com/2/4/15/imgbin-computer-icons-portable-network-graphics-avatar-icon-design-avatar-DsZ54Du30hTrKfxBG5PbwvzgE.jpg"),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
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
