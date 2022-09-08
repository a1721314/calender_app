import 'package:calender_app/view/components/custom_calender_builders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CustomCalendarBuilders customCalendarBuilders = CustomCalendarBuilders();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("カレンダー"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 15),
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), //角の丸み
                    ),
                  ),
                  child: const Text('今日'),
                ),
              ),
              Text(DateFormat.yMMM('ja').format(DateTime.now()).toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              IconButton(
                icon: const Icon(Icons.arrow_drop_down_rounded),
                onPressed: () async {
                  await DatePicker.showDatePicker(
                    context,
                    showTitleActions: true,
                    // onChanged内の処理はDatepickerの選択に応じて毎回呼び出される
                    onChanged: (date) {
                      // print('change $date');
                    },
                    // onConfirm内の処理はDatepickerで選択完了後に呼び出される
                    onConfirm: (date) {},
                    // Datepickerのデフォルトで表示する日時
                    currentTime: DateTime.now(),
                    locale: LocaleType.jp,
                    // localによって色々な言語に対応
                    //  locale: LocaleType.en
                  );
                },
              ),
            ]),
            TableCalendar(
              firstDay: DateTime.utc(2022, 4, 1),
              lastDay: DateTime.utc(2025, 12, 31),
              focusedDay: DateTime.now(),
              locale: 'ja_JP',
              headerVisible: false,
              calendarStyle: const CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              calendarBuilders: CalendarBuilders(
                defaultBuilder: customCalendarBuilders.defaultBuilder,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
