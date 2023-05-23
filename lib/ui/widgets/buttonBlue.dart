import 'package:flutter/material.dart';

class ButtonBlue extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const ButtonBlue({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.white,
              elevation: 0,
              color: Colors.blue,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: Text(this.text, style: TextStyle(color: Colors.white)),
              ),
              onPressed: this.onPressed),
        ],
      ),
    );
  }
}
