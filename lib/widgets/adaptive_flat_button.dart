import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AddaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;

  AddaptiveFlatButton({this.text, this.handler});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: handler,
          )
        : TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(
                Theme.of(context).primaryColor,
              ),
            ),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: handler,
          );
  }
}
