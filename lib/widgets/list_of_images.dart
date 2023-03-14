import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/travel_model.dart';

class ListOfImages extends StatelessWidget {
   ListOfImages({required this.selectedIndex});
  
  int selectedIndex;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: travelList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    print('image list');
                  },
                  child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      width: size.height / 10,
                      height: size.height / 10,
                      child: Image(
                        image: AssetImage(travelList[index].image),
                        fit: BoxFit.fill,
                      )),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
