import 'package:flutter/material.dart';

class LogoBlue extends StatelessWidget {
  const LogoBlue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/logo2.png',
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
