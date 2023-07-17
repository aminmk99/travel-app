import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

import '../model/travel_model.dart';

// ignore: must_be_immutable
class Description extends StatelessWidget {
  Description({required this.selectedIndex});

  int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Description'),
        ExpandableText(
          travelList[selectedIndex].description,
          expandText: 'read more',
          collapseText: 'show less',
          maxLines: 4,
          linkColor: Colors.blue,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
