import 'package:flutter/material.dart';
import 'package:netafim/ui/widgets/buttonWhite.dart';
import 'package:netafim/ui/widgets/customInput.dart';
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
          children: [
            LogoBlue(),
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
                Text('Perfil',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ],
            )),
            Form(),
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
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            placeholder: 'Nombre',
            keyboardType: TextInputType.name,
            textController: nameCtrl,
          ),
          CustomInput(
            placeholder: 'Apellidos',
            textController: lastNameCtrl,
          ),
          CustomInput(
            placeholder: 'Correo electronico',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          TextFormField(
            autocorrect: false,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0)),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: 'Contraseña',
              labelStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 22.0,
                  fontWeight: FontWeight.normal),
              suffixIcon: IconButton(
                icon: Icon(Icons.edit),
                color: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, 'updatePasswordPage');
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
