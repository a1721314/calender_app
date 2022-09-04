import 'package:calender_app/view/screens/pages/calender_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting('ja').then((_) => runApp(MyApp()));
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
