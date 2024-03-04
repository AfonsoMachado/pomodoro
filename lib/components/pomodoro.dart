import 'package:flutter/material.dart';
import 'package:pomodoro/components/pomodoro_timer.dart';
import 'package:pomodoro/components/time_input.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: PomodoroTimer()),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Row(
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
            ),
          )
        ],
      ),
    );
  }
}
