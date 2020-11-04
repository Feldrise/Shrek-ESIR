class Time {
  int _seconds;
  int _minutes;
  int _hours;

  Time({int hours, int minutes, int seconds}) {
    if (seconds >= 60) {
      minutes += seconds ~/ 60;
      seconds = seconds % 60;
    }

    if (minutes >= 60) {
      hours += minutes ~/ 60;
      minutes = minutes % 60;
    }

    _seconds = seconds;
    _minutes = minutes;
    _hours = hours;
  }

  int get seconds => _seconds;
  set seconds(int newSeconds) {
    _seconds = newSeconds;

    if (_seconds >= 60) {
      _minutes += _seconds ~/ 60;
      _seconds = _seconds % 60;
    }

    if (_minutes >= 60) {
      _hours += _minutes ~/ 60;
      _minutes = _minutes % 60;
    }
  }

  int get minutes => _minutes;
  set minutes(int newMinutes) {
    _minutes = newMinutes;

    if (_minutes >= 60) {
      _hours += _minutes ~/ 60;
      _minutes = _minutes % 60;
    }
  }

  // ignore: unnecessary_getters_setters
  int get hours => _hours;
  // ignore: unnecessary_getters_setters
  set hours(int newHours) => _hours = newHours;
}