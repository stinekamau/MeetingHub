import 'package:club_house/widgets/party_icon.dart';
import 'package:club_house/widgets/user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartyIcon extends StatelessWidget {
  double partySize;
  PartyIcon({Key? key, this.partySize = 25}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Text(
          "🎉",
          style: TextStyle(fontSize: partySize),
        ),
      ),
    );
  }
}

class RoomImage extends StatelessWidget {
  UserProfileImage image;
  bool readyTalk = false;
  String name;
  double micSize;
  double partySize;

  RoomImage({
    Key? key,
    this.micSize = 25,
    this.partySize = 15,
    required this.image,
    required this.readyTalk,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            Stack(
              children: [
                Container(child: image),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Icon(
                        CupertinoIcons.mic_off,
                        color: Colors.black,
                        size: micSize,
                      ),
                    )),
                if (readyTalk)
                  Positioned(
                      left: 0,
                      bottom: 5,
                      child: PartyIcon(partySize: partySize)),

                // Text("${name}",style: TextStyle(""),)
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            child: Text(
              "${name}",
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 14),
            ),
          ),
        )
      ],
    );
  }
}
