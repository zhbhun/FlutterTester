import 'package:flutter/material.dart';
import 'CustomDatePicker.dart';

final textStyle = TextStyle(
  fontSize: 14,
  color: Color(0xFF666666),
);

class DateRangePicker extends StatelessWidget {
  final List<DateTime> value;
  final DateTime minimumValue;
  final DateTime maximumValue;
  final ValueChanged<List<DateTime> > onChange;

  DateRangePicker({
    this.value,
    this.minimumValue,
    this.maximumValue,
    this.onChange,
  });

  DateTime get beginDate {
    return this.value != null && this.value.length >= 1 && this.value[0] != null
        ? this.value[0]
        : null;
  }

  DateTime get endDate {
    return this.value != null && this.value.length > 1 && this.value[1] != null
        ? this.value[1]
        : null;
  }

  String formatDateNumber(int number) {
    if (number < 10) {
      return '0$number';
    }
    return '$number';
  }

  String formatDate(datetime) {
    if (datetime == null) {
      return '';
    }
    int year = datetime.year;
    int month = datetime.month;
    int day = datetime.day;
    return '$year-${this.formatDateNumber(month)}-${this.formatDateNumber(day)}';
  }

  Widget buildDateItem(DateTime date) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              this.formatDate(date),
              style: textStyle,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CupertinoDatePicker.showDateModal(
          context: context,
          title: '选择起始时间',
          initialDateTime: this.beginDate,
          minimumDate: this.minimumValue,
          maximumDate: this.maximumValue,
          onConfirm: (DateTime beginDate) {
            CupertinoDatePicker.showDateModal(
              context: context,
              title: '选择终止时间',
              initialDateTime: this.endDate,
              minimumDate: this.minimumValue == null || beginDate.isAfter(this.minimumValue) ? beginDate : minimumValue,
              maximumDate: this.maximumValue,
              onConfirm: (DateTime endDate) {
                List<DateTime> newValue = [beginDate, endDate];
                if (this.onChange != null) {
                  this.onChange(newValue);
                }
              },
            );
          }
        );
      },
      child: Container(
        width: 229,
        height: 32,
        decoration: BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: new BorderRadius.all(
            new Radius.circular(16),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            this.buildDateItem(this.beginDate),
            this.buildDateItem(this.endDate),
          ],
        ),
      ),
    );
  }
}
