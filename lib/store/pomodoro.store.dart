import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum IntervalType { work, rest }

abstract class _PomodoroStore with Store {
  @observable
  bool started = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int workTime = 2;

  @observable
  int restTime = 1;

  @observable
  IntervalType intervalType = IntervalType.work;

  Timer? timer;

  @action
  void start() {
    started = true;
    // Executa de forma periódica a cada 1 segundo
    timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (minutes == 0 && seconds == 0) {
        _changeIntervalType();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    started = false;
    timer?.cancel();
  }

  @action
  void restart() {
    stop();
  }

  @action
  void incrementWorkTime() {
    workTime++;
  }

  @action
  void decrementWorkTime() {
    workTime--;
  }

  @action
  void incrementRestTime() {
    restTime++;
  }

  @action
  void decrementRestTime() {
    restTime--;
  }

  bool isWorking() {
    return intervalType == IntervalType.work;
  }

  bool isResting() {
    return intervalType == IntervalType.rest;
  }

  void _changeIntervalType() {
    if (isWorking()) {
      intervalType = IntervalType.rest;
      minutes = restTime;
    } else {
      intervalType = IntervalType.work;
      minutes = workTime;
    }
    seconds = 0;
  }
}
