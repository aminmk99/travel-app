import 'package:flutter/material.dart';

import '../model/travel_model.dart';

// ignore: must_be_immutable
class LocOfCities extends StatelessWidget {
  LocOfCities({required this.selectedIndex});

  int selectedIndex;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          travelList[selectedIndex].name,
          style: TextStyle(
            color: (travelList[selectedIndex].name == 'Paris')
                ? Colors.black
                : Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: size.height / 200,
        ),
        Row(
          children: [
            Icon(Icons.place, color: Colors.white, size: 20),
            Text(
              travelList[selectedIndex].location,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ],
    );
  }
}
