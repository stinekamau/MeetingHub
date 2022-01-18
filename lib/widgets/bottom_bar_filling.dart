import 'package:club_house/widgets/bottom_bar_container.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';

class BottomBarFilling extends StatelessWidget {
  List<String> url = [
    'assets/images/attachment.jpeg',
    'assets/images/following.png',
    'assets/images/padlock.jpeg',
    'assets/images/waving_hand.png'
  ];
  BottomBarFilling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: GridView.builder(
          padding: EdgeInsets.all(10.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemCount: url.length,
          itemBuilder: (context, i) {
            return BottomBarContainer(img: AssetImage(url[i]));
          }),
    );
  }
}
