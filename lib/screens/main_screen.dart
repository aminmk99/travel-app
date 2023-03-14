import 'package:flutter/material.dart';
import 'package:travel_app/widgets/banner_image.dart';
import 'package:travel_app/widgets/list_of_images.dart';
import 'package:travel_app/widgets/my_app_bar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  int _selectedIndex = 0;

  double magnitude = 13;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // UpperWidget(),
            Container(
              width: double.infinity,
              height: size.height / 1.7,
              color: Colors.amber,
              child: Stack(
                children: [
                  BannerImage(selectedIndex: _selectedIndex),
                  MyAppBar(),
                  ListOfImages(selectedIndex: _selectedIndex)
                ],
              ),
            ),
            Expanded(
      child: Container(
        color: Color.fromARGB(250, 197, 7, 255),
      ),
    ),
          ],
        ),
      ),
    );
  }
}
