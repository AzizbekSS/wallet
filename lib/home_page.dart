import 'package:flutter/material.dart';

import 'widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final DateTime date=DateTime(2025,10,1);
final double sum=123_456_666;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Wallet'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Header(date: date, sum: sum),
      ),
    );
  }
}

