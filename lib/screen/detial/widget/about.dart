import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("About", 
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),),
          const Text("The Shere Hills have numerous high peaks\nwith the highest peak reaching a height of about 1,829 metres or 6,001 feet above sea level,\n the Shere Hills are the highest point of the Jos Plateau and they form the third highest point in Nigeria\n after Chappal Waddi on the Mambilla Plateau averaging about\n 2,419 metres or 7,936 feet above sea level and Mount Dimlang (Vogel peak)\n on the Shebshi Mountains reaching a height of about 2,042 metres or 6,699 feet above sea level",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 14,
            height: 1.5
          ),),
           const SizedBox(height: 5,),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 1
                )
              )
            ),
            child: Text("Read more...",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor
            ),)
            )
        ],
      ),
    );  
  }
}