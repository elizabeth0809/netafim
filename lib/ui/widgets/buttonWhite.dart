import 'package:flutter/material.dart';

class ButtonWhite extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const ButtonWhite({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FractionallySizedBox(
            widthFactor: 0.5, // Ajusta el factor según tus necesidades
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.blue, width: 1),
              ),
              disabledColor: Colors.blue,
              elevation: 0,
              color: Colors.white,
              onPressed: onPressed,
              child: Container(
                //padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                child: Text(
                  this.text,
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
