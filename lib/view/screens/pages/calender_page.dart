import 'package:flutter/material.dart';

class CalenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:const Text("カレンダー"),
          centerTitle: true,
          ),
        body: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                ),
                child: const Text('今日'),
              ),
        ),
        
    );
  }
}