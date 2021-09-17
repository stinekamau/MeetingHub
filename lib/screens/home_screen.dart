import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:club_house/widgets/widgets.dart';
import 'package:club_house/data.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          icon: const Icon(
            CupertinoIcons.search,
            size:28.0,
          ),
          onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.envelope_open,
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.calendar,
            ),
            onPressed: (){},
          ),

          IconButton(onPressed: (){}, icon: const Icon(
            CupertinoIcons.bell_solid,
          )
          ),
          // UserProfileImage(imageurl: currentUser.imageUrl),
          GestureDetector(
            onTap: (){},
            child: Padding(
                padding: EdgeInsets.fromLTRB(4,6,3,6),
                child:
                UserProfileImage(imageurl: currentUser.imageUrl)
            ),
          ),

        ],

      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 140.0),
        children: [
          UpcomingRooms(upcoming: upcomingRoomsList),
        ],
      ),
    );


  }
}