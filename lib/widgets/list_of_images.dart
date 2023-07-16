import 'package:flutter/material.dart';

import '../model/travel_model.dart';

// ignore: must_be_immutable
class ListOfImages extends StatelessWidget {
  ListOfImages(
      {required this.selectedIndex,
      required this.index,
      required this.imageTap});

  int selectedIndex;
  int index;
  VoidCallback imageTap;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: imageTap,
              child: AnimatedContainer(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(travelList[index].image),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(
                        color: (selectedIndex == index)
                            ? Colors.white54
                            : Colors.white,
                        width: 3),
                    borderRadius: BorderRadius.circular(20)),
                duration: Duration(milliseconds: 500),
                width: (selectedIndex == index)
                    ? size.height / 9
                    : size.height / 11.4,
                height: (selectedIndex == index)
                    ? size.height / 9
                    : size.height / 11.4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
