import 'package:flutter/material.dart';
import 'package:netafim/ui/widgets/buttonBlue.dart';
import 'package:netafim/ui/widgets/customInput.dart';
import 'package:netafim/ui/widgets/logo.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                Expanded(
                  child: Text('Registro',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width * 0.07,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            )),
            Form(),
            ButtonBlue(
              onPressed: () {
                Navigator.pushNamed(context, 'confirmregister');
              },
              text: 'Registrar',
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
  final nameCtrl = TextEditingController();
  final lastNameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final passConCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            placeholder: 'Nombre',
            keyboardType: TextInputType.emailAddress,
            textController: nameCtrl,
          ),
          CustomInput(
            placeholder: 'Apellidos',
            isPassword: true,
            textController: lastNameCtrl,
          ),
          CustomInput(
            placeholder: 'correo electrónico',
            isPassword: true,
            textController: emailCtrl,
          ),
          CustomInput(
            placeholder: 'Contraseña',
            isPassword: true,
            textController: passCtrl,
          ),
          CustomInput(
            placeholder: 'Confirmar Contraseña',
            isPassword: true,
            textController: passConCtrl,
          ),
        ],
      ),
    );
  }
}
