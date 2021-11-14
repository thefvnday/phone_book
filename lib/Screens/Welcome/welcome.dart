import 'package:flutter/material.dart';
import 'package:phone_book/Screens/Welcome/components/body.dart';
import 'package:phone_book/constants.dart';

class WelcomeScreen extends StatelessWidget {
   static String routeName="/welcome";

  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: Body(),
    );
  }
}