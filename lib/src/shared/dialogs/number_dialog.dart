import 'package:flutter/material.dart';

Future<int> numberDialog(BuildContext context, int initialValue) {
  int _value = initialValue;

  return showDialog<int>(
    context: context,
    barrierDismissible: false, // dialog is not dismissible with a tap on the barrier
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Entez la nouvelle valeur"),
        content: Row(
          children: [
            Expanded(
              child: TextField(
                autofocus: true,
                controller: TextEditingController()..text = initialValue.toString(),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).accentColor,
                      width: 3
                    )
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).accentColor,
                      width: 3
                    )
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      width: 3
                    )
                  ),
                  labelText: "La nouvelle valeur", 
                  hintText: "Valeur", 
                ),
                onChanged: (value) {
                  _value = int.parse(value);
                },
              )
            )
          ],
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop(initialValue);
            },
            child: Text('Annuler', style: TextStyle(color: Theme.of(context).accentColor),),
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop(_value);
            },
            child: Text('Ok', style: TextStyle(color: Theme.of(context).accentColor)),
          ),
        ],
      );
    },
  );
}