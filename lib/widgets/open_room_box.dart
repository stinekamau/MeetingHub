import 'package:flutter/material.dart';

class OpenRoomBox extends StatelessWidget {
  String image;
  bool isFull;

  OpenRoomBox({Key? key, required this.image, this.isFull = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10.0),
        height: 140,
        width: 140,
        decoration: BoxDecoration(
            // image: DecorationImage(image: this.image as ImageProvider),
            color: Colors.white54,
            borderRadius: BorderRadius.circular(26.0),
            shape: BoxShape.rectangle),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Container(child: Image.asset(this.image, fit: BoxFit.contain)),
        ),
      ),
    );
  }
}
