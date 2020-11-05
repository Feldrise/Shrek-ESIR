import 'package:flutter/material.dart';

class ShrekClock extends StatelessWidget {
  const ShrekClock({Key key, @required this.nbShreks, @required this.nbAnes, @required this.nbChats}) : super(key: key);

  final int nbShreks;
  final int nbAnes;
  final int nbChats;
  
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        /** Shreks **/
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              color:Theme.of(context).scaffoldBackgroundColor,
              child: Text(nbShreks.toString(), style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(width: 8,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              color:Theme.of(context).accentColor,
              child: Image.asset("assets/shrek.png", width: 24, height: 24,)
              ),
            const SizedBox(width: 8,),
          ],
        ),
        
        /** Anes **/
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              color:Theme.of(context).scaffoldBackgroundColor,
              child: Text(nbAnes.toString(), style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(width: 8,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              color:Theme.of(context).accentColor,
              child: Image.asset("assets/ane.png", width: 24, height: 24,)
              ),
            const SizedBox(width: 8,),
          ],
        ),

        /** Chat **/
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              color:Theme.of(context).scaffoldBackgroundColor,
              child: Text(nbChats.toString(), style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(width: 8,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              color:Theme.of(context).accentColor,
              child: Image.asset("assets/chat.png", width: 24, height: 24,)
              ),
            const SizedBox(width: 8,),
          ],
        )
      ],
    );
  }
}