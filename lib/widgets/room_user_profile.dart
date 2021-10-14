import 'package:club_house/widgets/user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomUserProfile extends StatelessWidget
{
  final String imageURL;
  final String name;
  final double size;
  final bool isNew;
  final bool isMuted;

  const RoomUserProfile({Key? key,required this.imageURL,required this.name,this.size=48.0,this.isNew=false,required this.isMuted}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Stack(
          children: [
            Container(
                padding: const EdgeInsets.all(6.0),
                child: UserProfileImage(imageurl: imageURL,size: size,)
            ),
            if (isNew)
              Positioned(left: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0,2),
                        blurRadius: 6.0
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: const Text('🎉',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),),
                ),
              ),
            if (isMuted)
              Positioned(right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0,2),
                          blurRadius: 6.0
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Icon(CupertinoIcons.mic_slash,color: Colors.black,)
                ),
              )
          ],
        ),
        Flexible(child: Text(name,overflow: TextOverflow.ellipsis,))
      ],


    );
  }

}