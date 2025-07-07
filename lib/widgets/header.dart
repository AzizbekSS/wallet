import 'package:flutter/material.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.date,
    required this.sum,
  });

  final DateTime date;
  final double sum;


  void showCalendar(BuildContext context){
    showMonthPicker(context: context,
    initialDate: DateTime.now(),
    lastDate: DateTime.now(),
    firstDate: DateTime(2020),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(onPressed: (){
          showCalendar(context);
        }, child: Text(date.toString(),style: TextStyle(color: Colors.black),),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_rounded,),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(sum.toString(),style: TextStyle(
                  fontSize: 35,fontWeight: FontWeight.bold
                ),),
                Text("so'm",style: TextStyle(fontWeight: FontWeight.bold,height: 0.1),)
              ],
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded,),),
          ],
        )
      ],
    );
  }
}