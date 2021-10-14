import 'dart:math';

import 'package:club_house/widgets/user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:club_house/widgets/widgets.dart';

import '../data.dart';

class RoomScreen extends StatelessWidget
{
  final Room room;
  const RoomScreen({Key? key,required this.room}):super(key:key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leadingWidth: 120,
          leading: TextButton.icon(
            label: Text("All rooms"),
            icon: const Icon(CupertinoIcons.chevron_down),
            onPressed: () { Navigator.of(context).pop(); },
            style: TextButton.styleFrom(primary: Colors.black),
          ),

          actions: [
            IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.doc,size: 28.0,),),
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
        body: Container(
          padding: const EdgeInsets.all(20.0),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${room.club}'.toUpperCase(),
                          style:Theme.of(context).textTheme.overline!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0,
                          ),
                        overflow: TextOverflow.fade,
                      ),
                    GestureDetector( onTap: (){}, child: Icon(CupertinoIcons.ellipsis)),
                  ],),
                  Text(room.name,style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize:16.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0
                  ),)
                ],),
              ),
              SliverGrid.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  children: room.speakers.map((e)=>RoomUserProfile(imageURL: e.imageUrl,name: e.givenName,size:45,isNew:Random().nextBool(),isMuted: Random().nextBool(),)).toList()
              )
            ],

          ),
        ),

      );
  }
}