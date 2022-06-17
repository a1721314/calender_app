import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class CalenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:const Text("カレンダー"),
          centerTitle: true,
          ),
        body: Row(
          children: <Widget> [
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                ),
                child: const Text('今日'),
              ),
            IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () async {
                DatePicker.showDatePicker(
                  context,
                  showTitleActions: true,
                  // onChanged内の処理はDatepickerの選択に応じて毎回呼び出される
                  onChanged: (date) {
                      // print('change $date');
                  }, 
                  // onConfirm内の処理はDatepickerで選択完了後に呼び出される
                  onConfirm: (date) {
            
                  }, 
                  // Datepickerのデフォルトで表示する日時
                  currentTime: DateTime.now(),
                  locale: LocaleType.jp,
                  // localによって色々な言語に対応
                  //  locale: LocaleType.en
                );
              },
            ),
          ]
        ),
      ),
    );
  }
}