import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/constant/colors.dart';

class PlaceName extends StatelessWidget {
  final String title;
  final String subtitle;
  const PlaceName( this.title, this.subtitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 20, left: 30, right: 30),
      decoration: const BoxDecoration(
        color: accentColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(36),
          bottomRight: Radius.circular(36)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, 
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              Text(subtitle, 
              style: const TextStyle(
                fontSize: 12
              ),)
            ],
          ),
          Row(
            children: [
              SvgPicture.asset('assets/icons/heart-logo-svgrepo-com.svg', 
              width: 8,),
              const Text("4.8")
            ],
          )
        ],
      ),
    );
  }
}