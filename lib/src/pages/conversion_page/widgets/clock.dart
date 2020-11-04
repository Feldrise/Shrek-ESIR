import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shrek_esir/src/providers/time_store.dart';
import 'package:shrek_esir/src/shared/dialogs/number_dialog.dart';

class Digits extends StatelessWidget {
  const Digits({Key key, @required this.digits, @required this.unit}) : super(key: key);

  final String digits;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < digits.length; ++i) ...{
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            color:Theme.of(context).scaffoldBackgroundColor,
            child: Text(digits.characters.characterAt(i).toString(), style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 4)
        },
        const SizedBox(width: 8,),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            color:Theme.of(context).accentColor,
            child: Text(unit, style: const TextStyle(fontSize: 22)),
          ),
        const SizedBox(width: 8,),
      ],
    );
  }
}

class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TimeStore>(
      builder: (context, timeStore, child) {
        final String hours = timeStore.hours.toString();
        final String minutes = timeStore.minutes.toString();
        final String seconds = timeStore.seconds.toString();

        return Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            GestureDetector(
              onTap: () async => _changeHours(context),
              child: Digits(digits: hours, unit: "h",),
            ),
            GestureDetector(
              onTap: () async => _changeMinutes(context),
              child: Digits(digits: minutes, unit: "m",),
            ),
            GestureDetector(
              onTap: () async => _changeSeconds(context),
              child: Digits(digits: seconds, unit: "s",),
            )
          ],
        );
      },
    );
  }

  Future _changeHours(BuildContext context) async {
    final TimeStore timeStore = Provider.of<TimeStore>(context, listen: false);
    final int newHours = await numberDialog(context, timeStore.hours);

    timeStore.updateHours(newHours);
  }

  Future _changeMinutes(BuildContext context) async {
    final TimeStore timeStore = Provider.of<TimeStore>(context, listen: false);
    final int newMinutes = await numberDialog(context, timeStore.minutes);

    timeStore.updateMinutes(newMinutes);
  }

  Future _changeSeconds(BuildContext context) async {
    final TimeStore timeStore = Provider.of<TimeStore>(context, listen: false);
    final int newSeconds = await numberDialog(context, timeStore.seconds);

    timeStore.updateSeconds(newSeconds);
  }
}