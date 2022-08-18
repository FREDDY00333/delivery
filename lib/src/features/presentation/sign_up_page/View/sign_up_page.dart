import 'package:flutter/material.dart';
//color
import 'package:delivery/src/colors/colors.dart';
//UI
import 'package:flutter/services.dart';
//Commons Widgets
import 'package:delivery/src/features/presentation/login_page/View/login_page.dart';
import 'package:delivery/src/features/presentation/commons_widgets/header_text.dart';
import 'package:delivery/src/features/presentation/commons_widgets/back_button.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Boton de Barra principal
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: Builder(builder: (BuildContext context) {
            return backButton(context, Colors.black);
          }),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  headerText("Crea tu Cuenta", Theme.of(context).primaryColor,
                      FontWeight.bold, 30.0),

                  //input
                  _usernameInput(context),
                  _emailInput(context),
                  _phoneInput(context),
                  _dateOfBrithInput(context),
                  _passwordInput(context),
                  _singUpButton(context),

                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Text(
                        "Al hacer click en registrar, esta aceptando los términos y condiciones.",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

//Estructura Input

Widget _usernameInput(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

Widget _emailInput(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 15.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: "Email",
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

Widget _phoneInput(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 15.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: "Phone",
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

Widget _dateOfBrithInput(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 15.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
            hintText: "Fecha de Cumple....",
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

Widget _passwordInput(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 15.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

Widget _singUpButton(BuildContext context) {
  return Container(
    width: 400.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0),
    child: RaisedButton(
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new LoginPage()));
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Theme.of(context).accentColor,
        child: Text("Registrar",
            style: TextStyle(color: Colors.white, fontSize: 25.0))),
  );
}
