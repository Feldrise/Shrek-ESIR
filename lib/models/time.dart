class Time {
  final int seconds;
  final int minutes;
  final int hours;

  Time({this.hours, this.minutes, this.seconds}) :
    assert(seconds < 60, "Plus de 60 secondes font une minute"),
    assert(minutes < 60, "Plus de 60 minutes font une heure");

}