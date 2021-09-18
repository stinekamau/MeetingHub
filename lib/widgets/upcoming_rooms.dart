import 'package:club_house/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:club_house/data.dart';
import 'package:flutter/material.dart';

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
      decoration: BoxDecoration(
        color: Palette.secondaryBackground,
        borderRadius: BorderRadius.circular(39),
      ),
      child:  Padding(
        padding: EdgeInsets.only(left:20,top:1),
        child: Column(

          children: [
            ListTile(
              leading: Text('${upcoming[0].time}'),
              title: upcoming[0].club.isNotEmpty?Text('${upcoming[0].club}'): Text("CLD"),
              subtitle: Text('${upcoming[0].name}'),

            ),
            ListTile(
              leading: Text('${upcoming[1].time}'),
              title: upcoming[1].club.isNotEmpty?Text('${upcoming[1].club}'): Text("CLD"),
              subtitle: Text('${upcoming[1].name}'),

            ),
            ListTile(
              leading: Text('${upcoming[2].time}'),
              title: upcoming[2].club.isNotEmpty?Text('${upcoming[2].club}'): Text("CLD"),
              subtitle: Text('${upcoming[2].name}'),

            ),
          ],

        ),




      // return Container(
            //   child: Row(
            //     children: [
            //      Text( '${upcoming[index].time}'),
            //       SizedBox(width: 20),
            //       Column(
            //         children:[
            //           if(upcoming[index].club.isNotEmpty) Text('${upcoming[index].club}'),
            //           Text('${upcoming[index].name}'),
            //         ],
            //
            //       ),
            //     ],
            //   ),
            //
            //
            // );






      ),

    );
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
                  SizedBox(
                    height: 20,
                  )
                ],
              )
          ).toList()
        ),
      )




    );

  }

}