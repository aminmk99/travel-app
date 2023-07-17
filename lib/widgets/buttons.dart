import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttons extends StatelessWidget {
  Buttons({
    required this.upperIcon,
    required this.upperFunc,
    required this.magnitude,
    required this.buttonColor,
    required this.iconColor,
  });

  IconData upperIcon;
  VoidCallback upperFunc;
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
        onPressed: upperFunc,
        child: Icon(upperIcon, color: iconColor, size: 30),
        backgroundColor: buttonColor,
      )),
    );
  }
}
