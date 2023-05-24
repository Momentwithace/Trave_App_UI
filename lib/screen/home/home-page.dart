import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/constant/colors.dart';
import 'package:travel_app/screen/home/widget/category_list.dart';
import 'package:travel_app/screen/home/widget/place_staggered.dart';

import 'widget/search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchInput(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text("Explore Nigeria with\nyour favorite traveler!",
              style: TextStyle(
                fontFamily: "Georgia",
                height: 1.3,
                fontSize: 30
              ),),
            ),
            const CategoryList(),
            PlaceStaggeredGridView( )
          ],
        ))
        );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: backgroundColor,
      leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/align-justify.svg",
            width: 24,
            color: Colors.black,
          )),
      actions: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            // color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(
            "assets/images/headshot.jpeg",
            width: 36,
          ),
        )
      ],
    );
  }
}
