import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyCard extends StatelessWidget {
  MyCard(
      {required this.selectedIndex,
      required this.firstText,
      required this.secText});

  int selectedIndex;
  String firstText;
  String secText;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double magnitude = 9.3;
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27),
          side: BorderSide(width: 1, color: Color.fromARGB(60, 0, 0, 0)),
        ),
        child: Container(
            width: size.height / magnitude,
            height: size.height / magnitude,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(firstText, style: TextStyle(fontSize: 12)),
                Text(secText,
                    style: TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 121, 204, 222)))
              ],
            )));
  }
}
