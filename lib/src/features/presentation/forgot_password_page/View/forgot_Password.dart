import 'package:delivery/src/features/presentation/commons_widgets/back_button.dart';
import 'package:delivery/src/features/presentation/commons_widgets/header_text.dart';
import 'package:flutter/material.dart';

import '../../login_page/View/login_page.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              headerText("Olvide mi Contraseña", Theme.of(context).primaryColor,
                  FontWeight.bold, 30.0),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    "Por favor introduzca su dirección de correo, Recibirá un enlace para cambiar la contraseña",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0)),
              ),
              _emailInput(),
              _sendButton(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "Email",
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _sendButton(BuildContext context) {
  return Container(
    width: 400.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0),
    child: RaisedButton(
        onPressed: () {
          _showAlerta(context); //Nueva Alerta
          // Navigator.pushNamed(context, "Enviar"); //ruta nueva web NO APLICA
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Theme.of(context).accentColor,
        child: Text("Enviar",
            style: TextStyle(color: Colors.white, fontSize: 25.0))),
  );
}

//Alerta de Ventana
void _showAlerta(BuildContext context) {}
