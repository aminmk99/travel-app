import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/banner_image.dart';
import 'package:travel_app/widgets/description.dart';
import 'package:travel_app/widgets/list_of_images.dart';
import 'package:travel_app/widgets/location_of_cities.dart';
import 'package:travel_app/widgets/my_alert_dialog.dart';
import 'package:travel_app/widgets/my_app_bar.dart';
import 'package:travel_app/widgets/buttons.dart';
import '../model/travel_model.dart';
import 'dart:developer' as developer;

import '../widgets/my_card.dart';

// ignore: must_be_immutable
class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  double magnitude = 13;

  double paddingSize = 35;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                height: size.height / 1.88,
                child: Stack(
                  children: [
                    BannerImage(selectedIndex: _selectedIndex),
                    MyAppBar(),
                    //list of images
                    Positioned(
                      right: 5,
                      top: size.height / 11.5,
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
                    //Name of city and its location
                    Positioned(
                        left: size.width / 12,
                        bottom: size.height / 7.5,
                        child: LocOfCities(selectedIndex: _selectedIndex)),
                  ],
                ),
              ),
              //second half
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyCard(
                            selectedIndex: _selectedIndex,
                            firstText: 'Distance',
                            secText: '${travelList[_selectedIndex].distance}Km',
                          ),
                          MyCard(
                            selectedIndex: _selectedIndex,
                            firstText: 'Temp',
                            secText:
                                '${travelList[_selectedIndex].temp}\u00B0 C', //u00B00 is the decimal code of °
                          ),
                          MyCard(
                            selectedIndex: _selectedIndex,
                            firstText: 'Rating',
                            secText: '${travelList[_selectedIndex].rating}',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height / 45,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Description(selectedIndex: _selectedIndex)),
                    SizedBox(
                      height: size.height / 40,
                    ),
                    //bottom widgets
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text('Total Price',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Text(
                                '\$' + "${travelList[_selectedIndex].price}",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Spacer(),
                          Buttons(
                              iconColor: Colors.white,
                              buttonColor: Colors.black,
                              icon: CupertinoIcons.forward,
                              function: () => bottomButtonFunc(),
                              magnitude: 10)
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bottomButtonFunc() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return MyAlertDialog();
        });
  }
}
