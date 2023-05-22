import 'package:flutter/material.dart';
import 'package:netafim/ui/login/loginPage.dart';

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
