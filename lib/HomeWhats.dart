import 'package:flutter/material.dart';
import 'package:whats_app/whatsmessage.dart';

class HomeWhats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff168c4B),
        title: Row(
          children: [
            Image.asset(
              'assets/images/user.png',
              width: 70,
            ),
            Text(
              'john safwat',
              style: TextStyle(color: Colors.white, fontSize: 15),
            )
          ],
        ),
        leading: Icon(
          Icons.arrow_back_ios_new,
          size: 30,
          color: Colors.white,
        ),
        actions: [
          Icon(
            Icons.call,
            color: Colors.white,
          ),
          SizedBox(
            width: 7,
          ),
          Icon(
            Icons.video_call,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: Stack(
        children:[
          Image.asset(
          'assets/images/theme.png',
          width: double.infinity,
          fit: BoxFit.cover,),
          Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        whatsmessage(isjohn: true,text: 'Hello!',),
                        whatsmessage(isjohn: false,text: 'Hello!',),
                        whatsmessage(isjohn: true,text: 'Hey! Have you ever thought about how random moments can some times turn into the best memories? its like the universe loves to surprise us when we least expect it!'),
                        Row(
                          children: [
                            ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 255),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff168c4B),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15))),
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.all(10),
                                  child: Image.asset(
                                    'assets/images/route image.png',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ],
                        ),
                        whatsmessage(isjohn: false, text: 'what a great content Tp learn Flutter')

                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type a message ...',
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                            BorderSide(color: Color(0xff168c4B), width: 1)),
                        prefixIcon: Icon(Icons.camera_alt_outlined,
                            color: Colors.grey), // Emoji icon
                        suffixIcon: Icon(Icons.send, color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.mic,
                      color: Colors.white,
                      size: 30,
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xff168c4B), shape: BoxShape.circle),
                  ),
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}

