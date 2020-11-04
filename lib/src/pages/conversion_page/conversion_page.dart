import 'package:flutter/material.dart';
import 'package:shrek_esir/src/pages/conversion_page/widgets/clock.dart';
import 'package:shrek_esir/src/shared/widgets/button.dart';

class ConversionPage extends StatelessWidget {
  const ConversionPage({Key key, this.onPush}) : super(key: key);

  final ValueChanged<String> onPush;

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
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
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
            )
          ],
        )
      ),
    );
  }

  Future _conversion() async {
    
  }
}