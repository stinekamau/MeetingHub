import 'package:flutter/material.dart';
import 'package:club_house/widgets/widgets.dart';
import 'package:club_house/data.dart';
import 'package:club_house/config/palette.dart';
import 'package:flutter/cupertino.dart';

class ExistingRoom extends StatelessWidget {
  final List<Room> rl;

  const ExistingRoom({
    Key? key,
    required this.rl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: 800,
      child: ListView.builder(
        itemCount: rl.length,
        itemBuilder: (BuildContext context, int i) {
          return SizedBox(
            height: 200,
            child: Card(
              elevation: 15,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              color: Colors.white70,
              shadowColor: Colors.black54,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('${rl[i].club}')],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text('${rl[i].name}')],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
