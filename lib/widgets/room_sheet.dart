import 'package:club_house/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomSheet extends StatelessWidget {
  const RoomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(35)),
                child: SizedBox(
                  child: Text(
                    "✌️ Leave quietly",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                )),
            Container(
              width: 70,
              padding: EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              child: const Icon(
                CupertinoIcons.add,
                color: Colors.black,
              ),
            ),
            Container(
              width: 70,
              padding: EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              child: const Icon(
                CupertinoIcons.hand_raised_fill,
                color: Colors.black,
              ),
            ),
          ],
        ));
  }
}
