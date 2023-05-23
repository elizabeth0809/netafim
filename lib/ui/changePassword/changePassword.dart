import 'package:flutter/material.dart';
import 'package:netafim/ui/widgets/buttonBlue.dart';
import 'package:netafim/ui/widgets/buttons.dart';
import 'package:netafim/ui/widgets/customInput.dart';
import 'package:netafim/ui/widgets/logo.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

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
                    Navigator.pushNamed(context, 'login');
                  },
                  child: Icon(Icons.arrow_back, color: Colors.white),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(5),
                    backgroundColor: Colors.blue, // <-- Button color
                  ),
                ),
                Expanded(
                  child: Text('Cambiar contraseña',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            )),
            Form(),
            buttonLogin(
              onPressed: () {},
              text: 'Cambiar contraseña',
              onPressed2: () {},
              text2: 'Cancelar',
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
  final passActCtrl = TextEditingController();
  final passNewCtrl = TextEditingController();
  final passNewConCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            placeholder: 'Contraseña actual',
            keyboardType: TextInputType.emailAddress,
            textController: passActCtrl,
          ),
          CustomInput(
            placeholder: 'Contraseña nueva',
            isPassword: true,
            textController: passNewCtrl,
          ),
          CustomInput(
            placeholder: 'Confirmar contraseña',
            isPassword: true,
            textController: passNewConCtrl,
          ),
        ],
      ),
    );
  }
}
