import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key key, this.onPush}) : super(key: key);

  final ValueChanged<String> onPush;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgrounds/bg_info.png"),
            fit: BoxFit.cover
          )
        ),
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Center(
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text("Cette application a été réalisée par les étudiants de l'ESIR (Ecole Supérieur des Ingénieurs de Rennes)."),
                InkWell(
                  onTap: () => launch('https://github.com/Feldrise/Shrek-ESIR'),
                  child: Text('Voir le code source', style: TextStyle(color: Colors.blue[200]),),
                ),
                const SizedBox(height: 32,),
                const Text("Pour faire la conversion : "),
                const Text(" - 1 chat = 20 secondes"),
                const Text(" - 1 ane = 18 chats = 6 minutes"),
                const Text(" - 1 shrek = 10 anes = 1 heure")
              ],
            ),
          ),
        ),
      ),
    );
  }
}