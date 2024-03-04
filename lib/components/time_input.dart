import 'package:flutter/material.dart';

class TimeInput extends StatelessWidget {
  final String title;
  final int value;

  const TimeInput({super.key, required this.title, required this.value,});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(title),
      Text('$value'),
    ],);
  }
}
