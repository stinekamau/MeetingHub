import 'package:club_house/widgets/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:club_house/data.dart';
import 'package:flutter/cupertino.dart';

class RoomCard extends StatelessWidget
{
  final Room  room;

  const RoomCard(
      {Key? key,required this.room}
      ):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(vertical:5),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${room.club}'.toUpperCase(),
                style:Theme.of(context).textTheme.overline!.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.0,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(room.name,style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.bold,

              )),
              //This widget contains the Profile Pictures and the Column Widget
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 120,
                      child: Stack(
                        children: [
                          Positioned(
                              child: UserProfileImage(imageurl: room.speakers[1].imageUrl,
                                size: 34,),
                            top: 28,
                            left:26,
                          ),

                          UserProfileImage(imageurl: room.speakers[0].imageUrl,size: 34,)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...room.speakers.map((e) => Text(
                            '${e.familyName} ${e.givenName} ⚡❄',
                            style: Theme.of(context).textTheme.overline!.copyWith(
                              fontWeight: FontWeight.w200,
                              fontSize: 13,

                            ),
                          )
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '${room.speakers.length+room.followedBySpeakers.length+room.others.length} ',
                                  ),
                                  WidgetSpan(child: Icon(
                                    CupertinoIcons.person_2_alt,
                                    size: 18,
                                    color: Colors.grey,
                                  )
                                  ),
                                  TextSpan(
                                    text: ' / ${room.speakers.length} '
                                  ),
                                  WidgetSpan(child: Icon(
                                    CupertinoIcons.chat_bubble_2_fill,
                                    color: Colors.grey,
                                  )),
                                ]
                              ),
                            ),
                          ),
                        ],

                      )
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}