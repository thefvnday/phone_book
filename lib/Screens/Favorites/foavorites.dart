import 'package:flutter/material.dart';
import 'package:phone_book/Screens/Favorites/components/body.dart';
import 'package:phone_book/constants.dart';



class Favorites extends StatelessWidget {
  const Favorites({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryLightColor,
      body: Body(),
    );
  }
}