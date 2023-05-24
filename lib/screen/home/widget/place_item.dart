import 'package:flutter/material.dart';
import 'package:travel_app/screen/detial/details.dart';

import '../../../model/places.dart';

class PlaceItems extends StatelessWidget {
  final Place place;
  const PlaceItems(this.place, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage(place)));
      },
      child: Stack(
        children: [ Container(
          alignment: Alignment.bottomLeft,
          height: place.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(
                place.imageUrl
              ),
              fit: BoxFit.cover
            )
          ),
    
        ),
        Container(
          height: place.height,
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withAlpha(0),
                Colors.black12,
                Colors.black87,
              ] 
            )
          ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [ 
                Text(place.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                Text(place.subtitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)
                  )
              ],
            ),
          ),
        )
      ]),
    );
  }
}