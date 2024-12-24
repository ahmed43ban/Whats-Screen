import 'package:flutter/material.dart';
import 'package:whats_app/HomeWhats.dart';

main(){
  runApp(whatsapp());
}

class whatsapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'whhats screen',
      debugShowCheckedModeBanner: false,
      home: HomeWhats(),
    );

  }

}
