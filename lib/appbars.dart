import 'package:flutter/material.dart';

AppBar topbar = AppBar(
    backgroundColor: Colors.black,
    title: Image.asset(
      'assets/images/ytlogo.png',
      fit: BoxFit.cover,
      width: 100.0,
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Icon(
          Icons.cast,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Icon(
          Icons.notifications_sharp,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Icon(
          Icons.search_sharp,
        ),
      ),
      Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage("assets/images/avatar.jpeg"),
          ))
    ]);

Color normalcolor = Colors.white24;

Color selectedcolor = Colors.white;

BottomAppBar bottomappbar = BottomAppBar(
  color: Colors.black,
  child: Container(
    color: Colors.black,
    height: 55.0,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.home,
              color: selectedcolor,
            ),
            Text(
              "Home",
              style: TextStyle(color: selectedcolor),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.whatshot,
              color: normalcolor,
            ),
            Text(
              "Trending",
              style: TextStyle(color: normalcolor),
            ),
          ],
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 4,
              ),
              Icon(
                Icons.add_circle_outline,
                size: 35,
                color: normalcolor,
              ),
            ]),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.subscriptions,
              color: normalcolor,
            ),
            Text(
              "Subscriptions",
              style: TextStyle(color: normalcolor),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.folder,
              color: normalcolor,
            ),
            Text(
              "Library",
              style: TextStyle(color: normalcolor),
            ),
          ],
        ),
      ],
    ),
  ),
);
