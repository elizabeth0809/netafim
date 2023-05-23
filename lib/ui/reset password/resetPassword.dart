import 'package:flutter/material.dart';
import 'package:netafim/ui/widgets/buttonBlue.dart';
import 'package:netafim/ui/widgets/customInput.dart';
import 'package:netafim/ui/widgets/logo.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
          children: [
            Logo(),
            SizedBox(
              height: 10,
            ),
            Container(
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
                    backgroundColor: Colors.blue, // <-- Button color
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Text('Recuperar Contraseña',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            )),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Form(),
              ),
            ),
            SizedBox(height: 10),
            ButtonBlue(
              onPressed: () {},
              text: 'Enviar Solicitud',
            )
          ],
        ),
      )),
    ));
  }
}

class Form extends StatefulWidget {
  const Form({
    Key? key,
  }) : super(key: key);

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  final emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            placeholder: 'Correo Electrónico',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
        ],
      ),
    );
  }
}
