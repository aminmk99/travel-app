import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UpperButton extends StatelessWidget {
  UpperButton({required this.upperIcon, required this.upperFunc});

  IconData upperIcon;
  VoidCallback upperFunc;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double magnitude = 13;
    return SizedBox(
      height: size.height / magnitude,
      width: size.height / magnitude,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: upperFunc,
          child: Icon(upperIcon, color: Colors.black, size: 30),
          backgroundColor: Color.fromARGB(140, 255, 255, 255),
        ),
      ),
    );
  }
}
