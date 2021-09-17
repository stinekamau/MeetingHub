import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget
{
  final String imageurl;
  final double size;

  const UserProfileImage({
    Key?  key,
    required this.imageurl,
    this.size=25
}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(imageurl),
      radius: size,
    );
  }





}