import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeatureList extends StatefulWidget {
  const FeatureList({super.key});

  @override
  State<FeatureList> createState() => _FeatureListState();
}

class _FeatureListState extends State<FeatureList> {
  final featureList = [
    "Mark",
    "Compass",
    "Hotel",
    "Travel",
    "Share"
  ];

  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: currentSelect == index
                  // ? Theme.of(context).primaryColor
                  ? Colors.black
                  : Colors.white
          ),
          child: SvgPicture.asset("assets/icons/${featureList[index]}.svg", width: 50,),
        ), 
        separatorBuilder: (_, index) => const SizedBox(width: 20,), 
        itemCount: featureList.length
        ),
    );
  }
}