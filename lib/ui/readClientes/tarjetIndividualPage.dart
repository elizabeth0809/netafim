import 'package:flutter/material.dart';
import 'package:netafim/ui/widgets/buttonBlue.dart';
import 'package:netafim/ui/widgets/buttons.dart';
import 'package:netafim/ui/widgets/logoBlue.dart';

class TarjetIndividualPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fondo.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              LogoBlue(),
              SizedBox(height: 5),
              Container(
                width: 300,
                child: Row(
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Text(
                        'Tarjeta 1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
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
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Image.asset('assets/placeholder.jpeg'),
              ),
              SizedBox(height: 20),
              buttonLogin(
                onPressed: () {},
                onPressed2: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Center(
                          child: Text(
                            '¿Desea eliminar el cliente actual?',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        actions: <Widget>[
                          Center(
                              child: buttonLogin(
                            text: 'Eliminar',
                            onPressed: () {},
                            onPressed2: () {},
                            text2: 'Cancelar',
                          )),
                        ],
                      );
                    },
                  );
                },
                text: 'Agregar cliente',
                text2: 'Eliminar',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
