import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttons extends StatelessWidget {
  Buttons({
    required this.icon,
    required this.function,
    required this.magnitude,
    required this.buttonColor,
    required this.iconColor,
  });

  IconData icon;
  VoidCallback function;
  double magnitude;
  Color buttonColor;
  Color iconColor;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / magnitude,
      width: size.height / magnitude,
      child: FittedBox(
          child: FloatingActionButton(
        onPressed: function,
        child: Icon(icon, color: iconColor, size: 30),
        backgroundColor: buttonColor,
      )),
    );
  }
}
