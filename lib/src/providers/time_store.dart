import 'package:flutter/material.dart';
import 'package:shrek_esir/models/time.dart';

class TimeStore with ChangeNotifier {
  Time _time;

  TimeStore(Time time) : _time = time;

  TimeStore.fromValues({int hours, int minutes, int seconds}) {
    // TODO: faire en sorte de pouvoir mettre plus de 60 aux 
    // secondes et minutes
    _time = Time(hours: hours, minutes: minutes, seconds: seconds);
  }

  String get hours => _time.hours.toString();
  String get minutes => _time.minutes.toString();
  String get seconds => _time.seconds.toString();
}