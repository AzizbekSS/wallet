
import 'package:flutter/material.dart';

import 'budget.dart';
import 'expense_list.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Budget(),
        ExpenseList(),
      ],
    );
  }
}