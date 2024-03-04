import 'package:flutter/material.dart';
import 'package:pomodoro/components/pomodoro_timer.dart';
import 'package:pomodoro/components/time_input.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: PomodoroTimer()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TimeInput(
                  title: 'Trabalho',
                  value: store.workTime,
                ),
                TimeInput(
                  title: 'Descanso',
                  value: store.restTime,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
