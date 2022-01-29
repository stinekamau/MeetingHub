import 'dart:math';

import 'package:flutter/material.dart';

class ProfileDisplayInitials extends StatelessWidget {
  String initials;
  int heightParam = 0;
  int widthParam = 0;
  Color addColor;
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

  ProfileDisplayInitials({
    Key? key,
    required this.initials,
    this.heightParam = 100,
    this.widthParam = 100,
    this.addColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightParam.toDouble(),
      width: widthParam.toDouble(),
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: addColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Text(
          initials,
          style: TextStyle(
              fontSize: 13, letterSpacing: 3, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
