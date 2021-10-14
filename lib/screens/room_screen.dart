import 'package:club_house/widgets/user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                    Text("Club"),
                    Icon(CupertinoIcons.ellipsis)
                  ],)
                ],),
              )
            ],

          ),
        ),

      );
  }
}