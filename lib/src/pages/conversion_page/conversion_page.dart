import 'package:flutter/material.dart';

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
        child: const Center(
          child: Text("Conversion"),
        ),
      ),
    );
  }
}