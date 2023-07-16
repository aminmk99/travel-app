import 'package:flutter/material.dart';
import 'package:travel_app/widgets/banner_image.dart';
import 'package:travel_app/widgets/list_of_images.dart';
import 'package:travel_app/widgets/my_app_bar.dart';
import '../model/travel_model.dart';
import 'dart:developer' as developer;

// ignore: must_be_immutable
class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  double magnitude = 13;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height / 1.7,
              color: Colors.amber,
              child: Stack(
                children: [
                  BannerImage(selectedIndex: _selectedIndex),
                  MyAppBar(),
                  Positioned(
                    right: 5,
                    top: size.height/10,
                    child: SizedBox(
                      width: size.height/8,
                      height: double.maxFinite,
                      child: ListView.builder(
                          itemCount: travelList.length,
                          itemBuilder: (context, index) {
                            return ListOfImages(
                                selectedIndex: _selectedIndex,
                                index: index,
                                imageTap: () {
                                  developer.log('image tapping', name: 'ImageTap');
                                  setState(() {
                                    setState(() {
                                      _selectedIndex = index;
                                    });
                                  });
                                });
                          }),
                    ),
                  ),
                  
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
