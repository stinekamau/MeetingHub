import 'package:flutter/material.dart';
import 'dart:math';

class BottomBarContainer extends StatelessWidget {
  ImageProvider img;
  Random rand = new Random();
  List<Color> cols = [
    Colors.grey.shade50,
    Colors.indigo.shade100,
    Colors.pink.shade100,
    Colors.yellow.shade100,
    Colors.orange.shade100,
    Colors.greenAccent,
    Colors.teal
  ];

  BottomBarContainer({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30.0),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: cols[rand.nextInt(cols.length)],
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            image:
                DecorationImage(image: this.img, fit: BoxFit.cover, opacity: 0.8

                    // colorFilter: ColorFilter.mode(
                    //       Colors.black.withOpacity(0.6), BlendMode.dstATop),
                    ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ));
  }
}
