import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shrek_esir/src/pages/main_page/main_page.dart';
import 'package:shrek_esir/src/providers/time_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversion Shrek',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.green[900],
        // cardColor: applicationStyle.cardColor,
        primaryColor: Colors.green,
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
          headline6: TextStyle(fontSize: 38.0, fontWeight: FontWeight.w500,),
          subtitle2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w200,),
          headline5: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500,),
          subtitle1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w300,),
          bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400,),
          bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
          caption: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400,)
        ),
      ),
      
      home: ChangeNotifierProvider(
        create: (context) => TimeStore.fromValues(hours:  0, minutes: 0, seconds: 1),
        builder: (context, _) => MainPage(),
      ),
    );
  }
}