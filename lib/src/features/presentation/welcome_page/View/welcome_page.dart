import 'package:flutter/material.dart';
//UIS
import 'dart:ui';
//Commons WidGets
import 'package:delivery/src/features/presentation/commons_widgets/header_text.dart';
//Services
import 'package:flutter/services.dart';

import '../../login_page/View/login_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.white10)); //barra principal hora

    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1530554764233-e79e16c91d08?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80"),
          )),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0), //filtro
            child: Container(
              color: Colors.black.withOpacity(0.3), //Control de Oparcidad
            ),
          ),
        ),
        //columnas

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: headerText(
                  "Realiza tu Pedido", Colors.white, FontWeight.bold, 45.0),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              child: Text("Gracias por Preferirnos...",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0)),
            ),
            Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 30.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                new LoginPage())); //ruta nueva web
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Theme.of(context).accentColor,
                  child: Text("Login",
                      style: TextStyle(color: Colors.white, fontSize: 30.0)),
                )),
            Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 15.0),
                child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    color: Theme.of(context).buttonColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          child: Image(
                            image: NetworkImage(
                                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.stickpng.com%2Fes%2Fimg%2Ficonos-logotipos-emojis%2Fcompanias-technologicas%2Ficono-facebook&psig=AOvVaw3lyEquxWe_eAcbsz0kkMIF&ust=1642548130919000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMDqr-H2ufUCFQAAAAAdAAAAABAD"),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.0),
                          child: Text(
                            "Conecta con Facebook",
                            style:
                                TextStyle(color: Colors.white, fontSize: 22.0),
                          ),
                        ),
                      ],
                    )))
          ],
        )
      ],
    ));
  }
}
