import 'package:flutter/material.dart';

//header text y login
import 'package:delivery/src/features/presentation/commons_widgets/header_text.dart';
import 'package:delivery/src/features/presentation/login_page/View/login_page.dart';

Future showAlertDialog(
  BuildContext context, 
  ImageProvider<Object>imagePath, 
  String headerTitle,
  String headerSubTitle,
  String doneButton) async {
  await showDialog(
      //Ventana Emergente Alerta
      context: context,
      barrierDismissible:
          true, //para click fuera cierra la ventana barrierDismissible:
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(20.0))), //border sub ventana
          content: Container(
            height: 500,
            child: Column(
              children: [
                Image(
                    width: double.infinity,
                    height: 250.0,
                    fit: BoxFit.cover, //abarca todo el espacio de imagen
                    image: NetworkImage(//Sincronizar  Imagen
                        "https://icons555.com/images/icons-yellow/image_icon_sinchronize_pic_512x512.png")),
                Container(
                    margin: EdgeInsets.all(15.0),
                    child: headerText("Restablece Tu contraseña",
                        Theme.of(context).primaryColor, FontWeight.bold, 20.0)),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                      "Recibiras un correo con el codigo de seguridad para cambiar tu clave.",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0)),
                ),
                _doneButton(context),
              ],
            ),
          ),
        );
      });
}

Widget _doneButton(BuildContext context) {
  return Container(
    width: 400.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0),
    child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => new LoginPage())); //ruta nueva web
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Theme.of(context).accentColor,
        child: Text("Done",
            style: TextStyle(color: Colors.white, fontSize: 25.0))),
  );
}
