import 'package:flutter/material.dart';
import 'package:phone_book/screens/my_contact/components/body.dart';
import 'package:phone_book/constants.dart';


class MyContact extends StatelessWidget {
  static String routeName="/my_contact";
  const MyContact({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLightColor,
      body: Body(),
    );
  }
}