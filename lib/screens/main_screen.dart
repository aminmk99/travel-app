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
              child: Stack(
                children: [
                  BannerImage(selectedIndex: _selectedIndex),
                  MyAppBar(),
                  Positioned(
                    right: 5,
                    top: size.height / 10,
                    child: SizedBox(
                      width: size.height / 8,
                      height: double.maxFinite,
                      child: ListView.builder(
                          itemCount: travelList.length,
                          itemBuilder: (context, index) {
                            return ListOfImages(
                                selectedIndex: _selectedIndex,
                                index: index,
                                imageTap: () {
                                  developer.log('image tapping',
                                      name: 'ImageTap');
                                  setState(() {
                                    setState(() {
                                      _selectedIndex = index;
                                    });
                                  });
                                });
                          }),
                    ),
                  ),
                  Positioned(
                    left: size.width / 12,
                    bottom: size.height / 7.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          travelList[_selectedIndex].name,
                          style: TextStyle(
                            color: (travelList[_selectedIndex].name == 'Paris')
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
                              travelList[_selectedIndex].location,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ],
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
