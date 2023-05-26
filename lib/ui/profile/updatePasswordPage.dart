import 'package:flutter/material.dart';
import 'package:netafim/ui/widgets/buttonWhite.dart';
import 'package:netafim/ui/widgets/buttons.dart';
import 'package:netafim/ui/widgets/customInput.dart';
import 'package:netafim/ui/widgets/logoBlue.dart';

class UpdatePasswordPage extends StatelessWidget {
  const UpdatePasswordPage({super.key});

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
                Text('Cambiar contraseña',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ],
            )),
            Form(),
            SizedBox(height: 10),
            buttonLogin(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: ((context) => AlertDialog(
                          title: Center(
                              child: Text(
                            'Se ha cambiado exitosamente su contraseña',
                            textAlign: TextAlign.center,
                          )),
                          actions: <Widget>[
                            Center(
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                disabledColor: Colors.white,
                                elevation: 0,
                                color: Colors.blue,
                                child: Container(
                                  child: Text(
                                    'aceptar',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        )));
              },
              onPressed2: () {
                Navigator.pop(context);
              },
              text: 'Cambiar contraseña',
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
            placeholder: 'Contraseña actual',
            keyboardType: TextInputType.name,
            textController: nameCtrl,
          ),
          CustomInput(
            placeholder: 'Contraseña nueva',
            textController: lastNameCtrl,
          ),
          CustomInput(
            placeholder: 'Confirmar contraseña',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
        ],
      ),
    );
  }
}
