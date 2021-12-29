import 'package:club_house/widgets/room_images.dart';
import 'package:club_house/widgets/room_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:club_house/widgets/widgets.dart';
import 'package:club_house/data.dart';
import 'dart:math';

class RoomScreen extends StatelessWidget {
  Random rand = new Random();
  var checkList = [true, false];

  Room room;
  RoomScreen({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 150,
          elevation: 0,
          leading: TextButton.icon(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: TextButton.styleFrom(primary: Colors.black),
            icon: Icon(CupertinoIcons.chevron_down),
            label: Text("All Rooms"),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.doc)),
            GestureDetector(
              onTap: () {},
              child: Padding(
                  padding: EdgeInsets.fromLTRB(4, 6, 3, 6),
                  child: UserProfileImage(imageurl: currentUser.imageUrl)),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(40)),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(room.club),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(CupertinoIcons.ellipsis))
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Welcome to Clubhouse 🏡\n (Walkthrough with Q&A)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
              SliverGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 20.0,
                children: room.speakers
                    .map((e) => RoomImage(
                          image: UserProfileImage(
                            imageurl: e.imageUrl,
                            size: 50,
                          ),
                          readyTalk: rand.nextBool(),
                          name: e.givenName,
                        ))
                    .toList(),
              ),
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Followed by the speakers",
                      style:
                          TextStyle(fontWeight: FontWeight.w100, fontSize: 18),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              SliverGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 20.0,
                children: room.followedBySpeakers
                    .map((e) => RoomImage(
                          micSize: 18,
                          partySize: 18,
                          image: UserProfileImage(
                            imageurl: e.imageUrl,
                            size: 36,
                          ),
                          readyTalk: rand.nextBool(),
                          name: e.givenName,
                        ))
                    .toList(),
              ),
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Other speakers",
                      style:
                          TextStyle(fontWeight: FontWeight.w100, fontSize: 18),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              SliverGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 20.0,
                children: room.others
                    .map((e) => RoomImage(
                          micSize: 18,
                          partySize: 18,
                          image: UserProfileImage(
                            imageurl: e.imageUrl,
                            size: 36,
                          ),
                          readyTalk: rand.nextBool(),
                          name: e.givenName,
                        ))
                    .toList(),
              ),
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    SizedBox(
                      height: 150,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomSheet: RoomSheet(),
      ),
    );
  }
}
