import 'package:flutter/material.dart';
import 'package:netafim/ui/widgets/buttonWhite.dart';
import 'package:netafim/ui/widgets/logoBlue.dart';

class ProfileClientsPage extends StatelessWidget {
  const ProfileClientsPage({super.key});

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LogoBlue(),
            SizedBox(
              height: 10,
            ),
            Container(),
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
