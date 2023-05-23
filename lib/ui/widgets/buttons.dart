import 'package:flutter/material.dart';

class buttonLogin extends StatelessWidget {
  final String text;
  final String text2;
  final Function() onPressed;
  final Function() onPressed2;

  const buttonLogin(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.text2,
      required this.onPressed2});

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
              onPressed: onPressed,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: Text(this.text, style: TextStyle(color: Colors.white)),
              )),
          SizedBox(height: 10),
          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.blue, width: 1)),
              disabledColor: Colors.blue,
              elevation: 0,
              color: Colors.white,
              onPressed: onPressed2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                child: Text(
                  this.text2,
                  style: TextStyle(color: Colors.blue),
                ),
              ))
        ],
      ),
    );
  }
}
