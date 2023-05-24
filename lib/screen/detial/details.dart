import 'package:flutter/material.dart';
import 'package:travel_app/constant/colors.dart';
import 'package:travel_app/screen/detial/widget/about.dart';
import 'package:travel_app/screen/detial/widget/feature_list.dart';
import 'package:travel_app/screen/detial/widget/my_headers.dart';
import 'package:travel_app/screen/detial/widget/place_name.dart';

import '../../model/places.dart';

class DetailsPage extends StatelessWidget {
  final Place place;
  const DetailsPage(this.place, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical ,
        child: Column(
          children:[ MyHeaders(place.imageUrl),
          PlaceName(place.title, place.subtitle),
          const About(),
          const FeatureList()
          ]
        ),
      ),
    );
  }
}