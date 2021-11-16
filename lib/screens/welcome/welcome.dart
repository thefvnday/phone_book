import 'package:flutter/material.dart';
import 'package:phone_book/screens/welcome/components/body.dart';
import 'package:phone_book/constants.dart';

class WelcomeScreen extends StatelessWidget {
   static String routeName="/welcome";

  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Body(),
    );
  }
}