import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travel_app/screen/home/widget/place_item.dart';

import '../../../model/places.dart';

class PlaceStaggeredGridView extends StatelessWidget {
  final placeList = Place.generatedPlaces();
 PlaceStaggeredGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: StaggeredGridView.countBuilder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        itemCount: placeList.length,
        crossAxisCount: 4,
        itemBuilder: (context, index) => PlaceItems(placeList[index]),
        staggeredTileBuilder: (_) => const StaggeredTile.fit(2),
      ),
    );
  }
}