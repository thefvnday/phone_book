import 'package:flutter/material.dart';
import 'package:phone_book/Screens/MyContact/components/body.dart';
import 'package:phone_book/constants.dart';


class MyContact extends StatelessWidget {
  
  const MyContact({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryLightColor,
      body: Body(),
    );
  }
}