import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.date,
    required this.sum,
    required this.onTap,
    required this.previousMonth,
    required this.nextMont,
  });

  final DateTime date;
  final double sum;
  final void Function() onTap;
  final void Function() previousMonth;
  final void Function() nextMont;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            onTap();
          },
          child: Text(DateFormat("MMMM, yyyy").format(date), style: TextStyle(color: Colors.black)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: previousMonth,
              icon: Icon(Icons.arrow_back_ios_new_rounded),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  sum.toString(),
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Text(
                  "so'm",
                  style: TextStyle(fontWeight: FontWeight.bold, height: 0.1),
                ),
              ],
            ),
            IconButton(
              onPressed:  nextMont,
              icon: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ],
    );
  }
}
