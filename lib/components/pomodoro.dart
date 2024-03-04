import 'package:flutter/material.dart';
import 'package:pomodoro/components/time_input.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('Pomodoro'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TimeInput(
                title: 'Trabalho',
                value: 25,
              ),
              TimeInput(
                title: 'Descanso',
                value: 5,
              )
            ],
          )
        ],
      ),
    );
  }
}
