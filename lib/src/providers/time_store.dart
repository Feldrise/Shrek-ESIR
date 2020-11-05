import 'package:flutter/material.dart';
import 'package:shrek_esir/models/time.dart';

class TimeStore with ChangeNotifier {
  final Time _time;

  TimeStore(Time time) : _time = time;

  TimeStore.fromValues({int hours, int minutes, int seconds}) :
    _time = Time(hours: hours, minutes: minutes, seconds: seconds);

  int get hours => _time.hours;
  int get minutes => _time.minutes;
  int get seconds => _time.seconds;

  int get inSeconds {
    int total = seconds;

    total += minutes * 60;
    total += hours * 60 * 60;

    return total;
  }

  void updateHours(int newHours) {
    _time.hours = newHours;

    notifyListeners();
  }

  void updateMinutes(int newMinutes) {
    _time.minutes = newMinutes;

    notifyListeners();
  }

  void updateSeconds(int newSeconds) {
    _time.seconds = newSeconds;

    notifyListeners();
  }
}