import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/constant/colors.dart';

class MyHeaders extends StatelessWidget {
  final String imageUrl;
  const MyHeaders(this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      // width: double.infinity, is the same as the one below
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover
          )
      ),
      child: Stack(
        children: [
          Positioned(
            left: 30,
            top: MediaQuery.of(context).padding.top,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
                child:const Icon(Icons.arrow_back_ios),
              ),
            )
            ),
          Positioned(
            right: 16,
            bottom: 5 ,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: accentColor,
                borderRadius: BorderRadius.circular(36)
              ),
              child: SvgPicture.asset("assets/icons/heart-logo-svgrepo-com.svg", 
              width: 20,),
            )
            )
        ],
      ),
    );
  }
}