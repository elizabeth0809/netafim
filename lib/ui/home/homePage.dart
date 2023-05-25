import 'package:flutter/material.dart';
import 'package:netafim/ui/home/cardTable.dart';
import 'package:netafim/ui/widgets/buttonWhite.dart';
import 'package:netafim/ui/widgets/logoBlue.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fondo.png'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LogoBlue(),
            SizedBox(
              height: 5,
            ),
            Text('Bienvenido',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            CardTable(),
            SizedBox(height: 10),
            ButtonWhite(
              text: 'Cerrar sesión',
              onPressed: () {},
            )
          ],
        ),
      )),
    ));
  }
}
