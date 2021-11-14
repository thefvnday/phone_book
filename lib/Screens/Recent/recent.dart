import 'package:flutter/material.dart';
import 'package:phone_book/Screens/Recent/components/body.dart';
import 'package:phone_book/constants.dart';


class Recent extends StatelessWidget {
  const Recent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryLightColor,
      body: Body(),
    );
  }
}