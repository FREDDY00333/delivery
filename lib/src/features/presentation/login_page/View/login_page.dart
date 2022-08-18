import 'package:flutter/material.dart';
//import 'dart:html';
//UI
import 'dart:ui';
//colores
import 'package:delivery/src/colors/colors.dart';
import 'package:delivery/src/features/presentation/tabs/profile_tab/tabs_page.dart';
//widgets
import 'package:delivery/src/features/presentation/commons_widgets/back_button.dart';
import 'package:delivery/src/features/presentation/sign_up_page/View/sign_up_page.dart';

//Service
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white10));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width:
                      500, // agrege un container al image para probar el tamaño
                  height: 200,
                  child: Image(
                      width: double.infinity,
                      height: 300.0,
                      fit: BoxFit.cover, //abarca todo el espacio de imagen
                      image: NetworkImage(
                          "https://www.alianzataxi.com/wp-content/webp-express/webp-images/uploads/2020/07/comida-delivery.jpg.webp")),
                ),
                Container(
                    margin: EdgeInsets.only(top: 40.0),
                    child: backButton(context, Colors.white))
              ],
            ),
            Transform.translate(
              offset: Offset(0.0, -20.0),
              child: Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Column(
                          children: [
                            Text("Bienvenido.",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0)),
                            Text("Inicia Seccion en tu cuenta",
                                style: TextStyle(
                                    color: gris,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0)),
                            _emailInput(),
                            _passwordInput(),
                            _buttonLogin(context),
                            Container(
                              margin:
                                  EdgeInsets.only(top: 10.0), //margen de letras
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.popAndPushNamed(
                                      context, "forgot-password");
                                },
                                child: Text(
                                  "Olvide mi Contraseña",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0),
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(top: 10.0), //margen de letras
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.center, //centrar
                                children: [
                                  Text("No tienes cuenta?",
                                      style: TextStyle(
                                          color: gris,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15.0)),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (context) =>
                                                  new SignUpPage()));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal:
                                              10.0), //Centrar Margen Horizontal
                                      child: Text("Registrate",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15.0)),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "Email",
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _buttonLogin(BuildContext context) {
  return Container(
    width: 400.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 10.0),
    child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) =>
                      new TabsPage())); //ruta nueva web CAMIAR RUTA
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Theme.of(context).accentColor,
        child: Text("Login",
            style: TextStyle(color: Colors.white, fontSize: 25.0))),
  );
}
