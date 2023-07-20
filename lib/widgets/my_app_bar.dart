import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/widgets/buttons.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Positioned(
            top: size.height / 55,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Buttons(
                      icon: CupertinoIcons.back,
                      iconColor: Colors.black,
                      buttonColor: Color.fromARGB(140, 255, 255, 255),
                      magnitude: 15,
                      function: () {
                        print("back button");
                        print(size.height);
                        print(size.width);
                      }),
                  Buttons(
                    iconColor: Colors.black,
                      icon: CupertinoIcons.heart,
                      buttonColor: Color.fromARGB(140, 255, 255, 255),
                      magnitude: 15,
                      function: () {
                        print("heart button");
                      })
                ],
              ),
            ),
          );
  }
}