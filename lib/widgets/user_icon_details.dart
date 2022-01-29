import 'package:club_house/data.dart';
import 'package:club_house/widgets/profile_display_initials.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserIconDetails extends StatelessWidget {
  const UserIconDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            color: Colors.black,
            icon: Icon(
              Icons.share,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.black,
            icon: Icon(
              Icons.savings,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.black,
            icon: Icon(
              Icons.settings,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
        leadingWidth: 20.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ProfileDisplayInitials(
                        heightParam: 100,
                        widthParam: 100,
                        initials: currentUser.familyName[0] +
                            currentUser.givenName[0]),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    currentUser.givenName + "  " + currentUser.familyName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    currentUser.tagName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    currentUser.followers.toString() + " follower        ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    currentUser.following.toString() + " Following",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(currentUser.description)],
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(child: Icon(Icons.facebook)),
                    TextSpan(
                        text: " Add Facebook",
                        style: TextStyle(color: Colors.black)),
                  ])),
                  SizedBox(
                    width: 5,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(child: Icon(Icons.camera)),
                    TextSpan(
                        text: " Add Instagram",
                        style: TextStyle(color: Colors.black)),
                  ])),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Joined " + currentUser.date.toString().split(" ")[0],
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 140,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: ProfileDisplayInitials(
                            initials: "", addColor: Colors.grey.shade300),
                      ),
                      Positioned(
                        top: 10,
                        left: 20,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Icon(
                            Icons.home,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 20,
                          left: 20,
                          right: 20,
                          child: Container(
                            height: 32,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.blueAccent),
                            child: Text(
                              "  Create  A club ",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Topics",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(80.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: RichText(
                          text: TextSpan(children: [
                            WidgetSpan(child: Icon(Icons.add)),
                            TextSpan(text: " ADD TOPICS"),
                          ]),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
