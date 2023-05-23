import 'package:flutter/material.dart';
import 'package:netafim/ui/widgets/buttons.dart';
import 'package:netafim/ui/widgets/customInput.dart';
import 'package:netafim/ui/widgets/logo.dart';

class ConfirmRegister extends StatelessWidget {
  const ConfirmRegister({super.key});

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
            Logo(),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                    'Ahora debes ingresar a tu correo y confirmar la creacion del usuario',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w300))),
            SizedBox(height: 10),
            buttonLogin(
              onPressed: () {},
              text: 'Ir al correo electrónico',
              text2: 'Volver al Inicio',
              onPressed2: () {},
            )
          ],
        ),
      )),
    ));
  }
}
