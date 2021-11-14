import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:phone_book/Screens/Signup/components/body.dart';
import 'package:phone_book/constants.dart';



class SignUpScreen extends StatelessWidget {
  static String routeName="/sign_up";
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: Body(),
    );
  }
}