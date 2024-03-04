import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

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

  @action
  void start() {
    started = true;
  }

  @action
  void stop() {
    started = false;
  }

  @action
  void restart() {
    started = false;
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
}
