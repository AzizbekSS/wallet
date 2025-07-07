import 'package:flutter/material.dart';

class Budget extends StatelessWidget {
  const Budget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 439,
      decoration: BoxDecoration(
        color: Color.fromRGBO(239, 240, 250, 1 ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
    );
  }
}