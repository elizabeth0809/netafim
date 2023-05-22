import 'package:flutter/material.dart';
import 'package:netafim/ui/widgets/customInput.dart';
import 'package:netafim/ui/widgets/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Logo(),
                Text('Inicia sesion para registrar clientes',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
                Form(),
                TextButton(
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, 'register'),
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                          Colors.indigo.withOpacity(0.1)),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  child: Text(
                    'Olvide mi contraseña',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                ),
                SizedBox(height: 10),
                MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    disabledColor: Colors.white,
                    elevation: 0,
                    color: Colors.blue,
                    onPressed: () {},
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      child: Text('Iniciar sesión'),
                    )),
                SizedBox(height: 10),
                MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    disabledColor: Colors.blue,
                    elevation: 0,
                    color: Colors.white,
                    onPressed: () {},
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                      child: Text(
                        'Registro',
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
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
  final passCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            placeholder: 'Contraseña',
            isPassword: true,
            textController: passCtrl,
          ),
        ],
      ),
    );
  }
}
