import 'package:flutter/material.dart';
import 'package:shrek_esir/src/pages/main_page/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.green[900],
        // cardColor: applicationStyle.cardColor,
        // primaryColor: Colors.white,
        accentColor: Colors.green,

        // cardTheme: CardTheme(
        //   elevation: 15,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(20.0),
        //   ),
        //   color: Colors.green,
        //   margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8)
        // ),

        textTheme: const TextTheme(
          headline6: TextStyle(fontSize: 38.0, fontWeight: FontWeight.w500, color: Colors.white),
          subtitle2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w200, color: Colors.white),
          headline5: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500, color: Colors.white),
          subtitle1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w300, color: Colors.white),
          bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.white),
          bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.white),
          caption: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: Colors.white)
        ),
      ),
      
      home: MainPage(),
    );
  }
}