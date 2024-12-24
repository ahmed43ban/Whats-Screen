import 'package:flutter/material.dart';

class whatsmessage extends StatelessWidget {
  late bool isjohn;
  late Color backcolor;
  late double topright ;
  late double toplifte;
  String text;
  late TextDirection dirc;

  whatsmessage({required this.isjohn, required this.text}) {
    backcolor = isjohn? Color(0xff168c4B):Color(0xff232D36);
    toplifte = isjohn? 0 :15 ;
    topright = isjohn? 15 : 0;
    dirc = isjohn? TextDirection.ltr:TextDirection.rtl;

  }


  Widget build(BuildContext context) {
    return Row(
      textDirection: dirc,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 255),
          child: Container(
              decoration: BoxDecoration(
                  color: backcolor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(toplifte),
                      topRight: Radius.circular(topright),
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              margin: EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 10),
              padding: EdgeInsets.all(10),
              child:
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white, fontSize: 17),
                )),
        ),
      ],
    );
  }
}

