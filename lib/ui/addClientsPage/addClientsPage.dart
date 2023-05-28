import 'package:flutter/material.dart';
import 'package:netafim/ui/widgets/buttonBlue.dart';
import 'package:netafim/ui/widgets/buttonWhite.dart';
import 'package:netafim/ui/widgets/buttons.dart';
import 'package:netafim/ui/widgets/customInput.dart';
import 'package:netafim/ui/widgets/logoBlue.dart';

class AddClientsPage extends StatelessWidget {
  const AddClientsPage({super.key});
  final bool receiveInformation = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fondo.png'), fit: BoxFit.cover)),
        child: ListView(
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
                Text('Añadir cliente',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ],
            )),
            ButtonBlue(
              onPressed: () {
                Navigator.pushNamed(context, 'addTarjetPage');
              },
              text: 'Añadir tarjeta de cliente',
            ),
            Form(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(value: receiveInformation, onChanged: (value) {}),
                Text('¿Desea recibir informacion por correo?'),
              ],
            ),
            buttonLogin(
              onPressed: () {},
              onPressed2: () {},
              text: 'Guardar cliente',
              text2: 'Cancelar',
            )
          ],
        ),
      ),
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
  final bussinessCtrl = TextEditingController();
  final numberCtrl = TextEditingController();
  final zoneCtrl = TextEditingController();
  final countryCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String? selectedOption;
    List<String> _options = [
      'Opción 1',
      'Opción 2',
      'Opción 3',
    ];
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
            placeholder: 'Empresa',
            textController: bussinessCtrl,
          ),
          CustomInput(
            placeholder: 'Número de teléfono',
            keyboardType: TextInputType.phone,
            textController: numberCtrl,
          ),
          CustomInput(
            placeholder: 'Correo electronico',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          DropdownButtonFormField<String>(
            value: selectedOption,
            items: _options.map((String option) {
              return DropdownMenuItem<String>(
                value: option,
                child: Text(option),
              );
            }).toList(),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: 'Cultivo',
              labelStyle: TextStyle(
                color: Colors.blue,
                fontSize: 22.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            onChanged: (String? newValue) {
              setState(() {
                selectedOption = newValue!;
              });
            },
          ),
          SizedBox(height: 20),
          CustomInput(
            placeholder: 'Ubicación/zona',
            textController: zoneCtrl,
          ),
          CustomInput(
            placeholder: 'País',
            textController: countryCtrl,
          ),
          TextFormField(
            autocorrect: false,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: 'Tamaño Cultivo',
              labelStyle: TextStyle(
                color: Colors.blue,
                fontSize: 22.0,
                fontWeight: FontWeight.normal,
              ),
              prefix: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(hintText: '999'),
                    autocorrect: false,
                  )),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: DropdownButton<String>(
                      value: selectedOption,
                      items: [
                        DropdownMenuItem<String>(
                          value: 'unidad',
                          child: Text('unidad'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'e',
                          child: Text('e'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'a',
                          child: Text('a'),
                        ),
                      ],
                      onChanged: (newValue) {
                        setState(() {
                          selectedOption = newValue;
                        });
                      },
                      underline:
                          SizedBox(), // Remueve la línea horizontal debajo del DropdownButton
                      icon: Icon(
                          Icons.arrow_drop_down), // Icono del botón desplegable
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                      isExpanded:
                          true, // Hace que el DropdownButton ocupe todo el ancho disponible
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
