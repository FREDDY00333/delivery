import 'package:flutter/material.dart';
//Pages Ruta
import 'package:delivery/src/features/presentation/welcome_page/View/welcome_page.dart';
import 'package:delivery/src/features/presentation/login_page/View/login_page.dart';
import 'package:delivery/src/features/presentation/forgot_password_page/View/forgot_Password.dart';
import 'package:delivery/src/features/presentation/sign_up_page/View/sign_up_page.dart';
import 'package:delivery/src/features/presentation/tabs/profile_tab/tabs_page.dart';

//final rotas
final routes = <String, WidgetBuilder>{
  "welcome": (BuildContext context) => WelcomePage(),
  "login": (BuildContext context) => LoginPage(),
  "forgot-password": (BuildContext context) => ForgotPassword(),
  "sign-up": (BuildContext context) => SignUpPage(),
  "tabs": (BuildContext context) => TabsPage()
};
