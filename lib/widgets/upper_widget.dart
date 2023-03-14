import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/upper_button.dart';

class UpperWidget extends StatelessWidget {
  const UpperWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double magnitude = 13;
    return Container(
      width: double.infinity,
      height: size.height / 1.75,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UpperButton(upperIcon: CupertinoIcons.back, upperFunc: (){print("back button");}),
          UpperButton(upperIcon: CupertinoIcons.heart, upperFunc: (){print("heart button");})
        ],
      ),
    );
  }
}
