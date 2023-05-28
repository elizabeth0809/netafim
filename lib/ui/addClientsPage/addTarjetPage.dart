import 'package:flutter/material.dart';
import 'package:netafim/ui/widgets/buttonBlue.dart';
import 'package:netafim/ui/widgets/buttons.dart';
import 'package:netafim/ui/widgets/logoBlue.dart';

class AddTarjetPage extends StatelessWidget {
  const AddTarjetPage({super.key});

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
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LogoBlue(),
            SizedBox(
              height: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back, color: Colors.white),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(5),
                    backgroundColor: Colors.blue,
                  ),
                ),
                SizedBox(height: 10), // Espacio entre el botón y el texto
                Text(
                  'Puedes tomar una foto de una tarjeta de presentación y luego transcribir los datos',
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            buttonLogin(
              onPressed: () {},
              onPressed2: () {},
              text: 'Tomar una foto',
              text2: 'Cargar una foto',
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white, // Agrega el fondo blanco al Container

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Image.asset('assets/placeholder.jpeg'),
            ),
            ButtonBlue(
              text: 'Guardar tarjeta',
              onPressed: () {},
            )
          ],
        ),
      )),
    ));
  }
}
