import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shrek_esir/src/pages/conversion_page/widgets/clock.dart';
import 'package:shrek_esir/src/pages/conversion_page/widgets/shrek_clock.dart';
import 'package:shrek_esir/src/providers/time_store.dart';
import 'package:shrek_esir/src/shared/widgets/button.dart';

class ConversionPage extends StatefulWidget {
  const ConversionPage({Key key, this.onPush}) : super(key: key);

  final ValueChanged<String> onPush;

  @override
  _ConversionPageState createState() => _ConversionPageState();
}

class _ConversionPageState extends State<ConversionPage> {
  int _nbShreks = 0;
  int _nbAnes = 0;
  int _nbChats = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgrounds/bg_conversion.png"),
            fit: BoxFit.cover
          )
        ),
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: const Text("Vous pouvez appuyer sur chacune des valeurs pour les modifiers."),
            ),
            const SizedBox(height: 32.0,),
            SizedBox(
              width: double.infinity,
              child: Clock()
            ),
            const SizedBox( height: 32.0 ,),
            Button(
              onPressed: _conversion, 
              text: "Convertir l'heure"
            ),
            const SizedBox(height: 64.0,),
            SizedBox(
              width: double.infinity,
              child: ShrekClock(nbShreks: _nbShreks, nbAnes: _nbAnes, nbChats: _nbChats,)
            ),
          ],
        )
      ),
    );
  }

  Future _conversion() async {
    final TimeStore timeStore = Provider.of<TimeStore>(context, listen: false);
    final int totalSeconds = timeStore.inSeconds;

    // Pour faire la conversion :
    //  - 1 chat = 20 seconds
    //  - 1 ane = 18 chats = 6 minutes
    //  - 1 shrek = 10 anes = 1 heure
    setState(() {
      _nbChats = totalSeconds ~/ 20 ;

      if (_nbChats >= 18) {
        _nbAnes = _nbChats ~/ 18;
        _nbChats = _nbChats % 18; 
      }
      else {
        _nbAnes = 0;
      }

      if (_nbAnes >= 10) {
        _nbShreks = _nbAnes ~/ 10;
        _nbAnes = _nbAnes % 10;
      }
      else {
        _nbShreks = 0;
      }

    });
  }
}