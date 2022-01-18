import 'package:club_house/widgets/open_room_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateRoomTop extends StatefulWidget {
  const CreateRoomTop({Key? key}) : super(key: key);

  @override
  _CreateRoomTopState createState() => _CreateRoomTopState();
}

class _CreateRoomTopState extends State<CreateRoomTop> {
  // showModalBottomSheet(context)
  bool isReplays = false;

  var itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Switch(
        value: isReplays,
        onChanged: (value) {
          setState(() {
            isReplays = true;
          });
        },
        activeColor: Colors.green,
        activeTrackColor: Colors.green,
      ),
      Text(
        "Replays",
        style: TextStyle(fontWeight: FontWeight.w100, fontSize: 14),
      ),
      ClipOval(
        child: IconButton(
          icon: Icon(
            CupertinoIcons.question,
            size: 10,
          ),
          onPressed: () {},
        ),
      ),
      TextButton(
          onPressed: () {},
          child: Text(
            "+ Add a title",
            style: TextStyle(color: Colors.greenAccent),
          )
          ),
    ]);
  }
}
