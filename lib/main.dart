import 'package:flutter/material.dart';
import 'package:netafim/ui/addClientsPage/addClientsPage.dart';
import 'package:netafim/ui/addClientsPage/addTarjetPage.dart';
import 'package:netafim/ui/changePassword/changePassword.dart';
import 'package:netafim/ui/home/homePage.dart';
import 'package:netafim/ui/login/loginPage.dart';
import 'package:netafim/ui/profile/profilePage.dart';
import 'package:netafim/ui/profile/updatePasswordPage.dart';
import 'package:netafim/ui/readClientes/readClientsPage.dart';
import 'package:netafim/ui/register/confirmRegister.dart';
import 'package:netafim/ui/register/registerPage.dart';

import 'ui/reset password/resetPassword.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Productos App',
      initialRoute: 'login',
      routes: {
        'login': (_) => LoginPage(),
        'register': (_) => RegisterPage(),
        'resetPassword': (_) => ResetPassword(),
        'confirmregister': (_) => ConfirmRegister(),
        'changepassword': (_) => ChangePasswordPage(),
        'homepage': (_) => HomePage(),
        'profileClientsPage': (_) => ProfileClientsPage(),
        'readClientsPage': (_) => ReadClientsPage(),
        'addClientsPage': (_) => AddClientsPage(),
        'updatePasswordPage': (_) => UpdatePasswordPage(),
        'addTarjetPage': (_) => AddTarjetPage()
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(elevation: 0, color: Colors.indigo),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.indigo, elevation: 0),
      ),
    );
  }
}
