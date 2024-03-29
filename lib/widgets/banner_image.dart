import 'package:flutter/material.dart';
import 'package:travel_app/model/travel_model.dart';

// ignore: must_be_immutable
class BannerImage extends StatelessWidget {
  BannerImage({required this.selectedIndex});

  int selectedIndex;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height / 2.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
          bottomRight: Radius.circular(60),
        ),
        image: DecorationImage(
          image: AssetImage(travelList[selectedIndex].image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
