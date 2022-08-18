import 'package:flutter/material.dart';

Widget doneButton(BuildContext context, String labelButton) {
  return Container(
      width: 370.0,
      height: 45.0,
      margin: EdgeInsets.only(top: 40.0),
      child: RaisedButton(
        onPressed: () {
          Navigator.popAndPushNamed(context, "login");
        },
        color: Theme.of(context).accentColor,
        child: Text(
          labelButton,
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ));
}
