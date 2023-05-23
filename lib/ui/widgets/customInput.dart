import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String placeholder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomInput(
      {super.key,
      required this.placeholder,
      required this.textController,
      this.keyboardType = TextInputType.text,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: TextFormField(
          controller: this.textController,
          autocorrect: false,
          keyboardType: this.keyboardType,
          obscureText: this.isPassword,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blue, width: 2.0)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blue, width: 2.0)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: this.placeholder,
            labelStyle: TextStyle(
                color: Colors.blue,
                fontSize: 22.0,
                fontWeight: FontWeight.normal),
          ),
        ));
  }
}
