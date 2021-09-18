import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:club_house/widgets/widgets.dart';
import 'package:club_house/data.dart';
import 'package:club_house/config/palette.dart';

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
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 140.0),
            children: [
              UpcomingRooms(upcoming: upcomingRoomsList),
              SizedBox(height:20),
              ...roomsList.map((e)=>RoomCard(room: e,)),
              // ExistingRoom(rl: roomsList),
            ],
          ),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,

                  colors: [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(1.0)
                  ]


                ),
              ),
            ),
          ),
          Positioned(

              bottom: 60,
              child: Container(
                padding: EdgeInsets.all(4),
                height: 40,
                decoration: BoxDecoration(
                  color:Colors.green,
                  borderRadius: BorderRadius.circular(35.0),

                ),

                child: Text.rich(

                  TextSpan(
                    children: [
                      WidgetSpan(child: Icon(
                        CupertinoIcons.add,
                        color: Colors.white,

                      )
                      ),
                      TextSpan(
                        text: ' Start A room  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white70

                        ),
                      ),
                    ]
                  ),
                ),

              )
          ),
          Stack(
            children: [
              Positioned(
                bottom: 65,
                right:60,
                child:IconButton(
                  icon:  Icon(
                    CupertinoIcons.circle_grid_3x3_fill,
                    size: 40,

                  ),
                  onPressed: (){},
                ),
              ),
              Positioned(
                  bottom: 65,
                  right: 65,
                  child: Container(
                    height: 16.0,
                    width:16.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Palette.green,

                    ),
                  )
              ),

            ],
          ),
        ],
      ),
    );


  }
}