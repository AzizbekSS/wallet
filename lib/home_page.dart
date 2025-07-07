import 'package:flutter/material.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

import 'widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime date = DateTime.now();
  final double sum = 123_456_666;

  void showCalendar(BuildContext context) {
    showMonthPicker(
      context: context,
      initialDate: DateTime.now(),
      lastDate: DateTime.now(),
      firstDate: DateTime(2020),
    ).then((month) {
      if (month != null) {
        setState(() {
          date = month;
        });
      }
    });
  }

  void previousMonth() {
    if(date.year==2020&&date.month==1){
      return;
    }
    setState(() {
      date = DateTime(date.year, date.month - 1, date.day );
    });
  }

  void nextMonth() {
       if(date.year==DateTime.now().year&&date.month==DateTime.now().month){
      return;
    }
      setState(() {
      date = DateTime(date.year, date.month + 1, date.day );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Wallet')),
      body: SizedBox(
        width: double.infinity,
        child: Header(
          date: date,
          sum: sum,
          onTap: () {
            showCalendar(context);
          },
          previousMonth:previousMonth ,
          nextMont: () =>nextMonth(),
        ),
      ),
    );
  }
}
