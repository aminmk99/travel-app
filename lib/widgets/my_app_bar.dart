import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/widgets/upper_button.dart';

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
                  UpperButton(
                      upperIcon: CupertinoIcons.back,
                      upperFunc: () {
                        print("back button");
                        print(size.height);
                        print(size.width);
                      }),
                  UpperButton(
                      upperIcon: CupertinoIcons.heart,
                      upperFunc: () {
                        print("heart button");
                      })
                ],
              ),
            ),
          );
  }
}