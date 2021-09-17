import 'package:club_house/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:club_house/data.dart';

class UpcomingRooms extends StatelessWidget
{
     final List<Room> upcoming;

     const UpcomingRooms(
     {
       Key? key,
       required this.upcoming,
}
         ) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // color: Palette.secondaryBackground,
      decoration: BoxDecoration(
        color: Palette.secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: EdgeInsets.only(left:20,top:5),
        child: Column(
          children: upcoming.map((e)=>
              Row(
                children: [
                  Text(e.time),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      if(e.club.isNotEmpty) Text(e.club),
                      Text(e.name)
                    ],
                  ),
                ],
              )
          ).toList()
        ),
      )




    );

  }

}