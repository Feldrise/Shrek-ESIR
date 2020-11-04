import 'package:flutter/material.dart';

class ConversionPage extends StatelessWidget {
  const ConversionPage({Key key, this.onPush}) : super(key: key);

  final ValueChanged<String> onPush;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Conversion"),
      ),
    );
  }
}