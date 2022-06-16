import 'package:calender_app/view/screens/pages/calender_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NewsFeed",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Noto Sans JP",
        visualDensity: VisualDensity.adaptivePlatformDensity,),
      home: CalenderPage(),
    );
  }
}
