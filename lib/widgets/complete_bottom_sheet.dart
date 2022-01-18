import 'package:club_house/widgets/bottom_bar_filling.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';

class CompleteBottomSheet extends StatelessWidget {
  const CompleteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Start a room with ....",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
        BottomBarFilling()
      ],
    );
  }
}
