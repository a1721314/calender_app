import 'package:flutter/material.dart';

class CustomCalendarBuilders {

  Color _textColor(DateTime day) {
    const _defaultTextColor = Colors.black87;

    if (day.weekday == DateTime.sunday) {
      return Colors.red;
    }
    if (day.weekday == DateTime.saturday) {
      return Colors.blue[600]!;
    }
    return _defaultTextColor;
  }

  /// 通常の日付部分を生成する
  Widget defaultBuilder(
      BuildContext context, DateTime day, DateTime focusedDay) {
    return _CalendarCellTemplate(
      dayText: day.day.toString(),
      dayTextColor: _textColor(day),
    );
  }
}

class _CalendarCellTemplate extends StatelessWidget {
   const _CalendarCellTemplate({
    Key? key,
    String? dayText,
    Duration? duration,
    Alignment? textAlign,
    Color? dayTextColor,
  })  : dayText = dayText ?? '',
        duration = duration ?? const Duration(milliseconds: 250),
        textAlign = textAlign ?? Alignment.center,
        dayTextColor = dayTextColor ?? Colors.black87,
        super(key: key);

  final String dayText;
  final Color? dayTextColor;
  final Duration duration;
  final Alignment? textAlign;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: duration,
      alignment: textAlign,
      child: Text(
        dayText,
        style: TextStyle(
          color: dayTextColor,
        ),
      ),
    );
  }
}