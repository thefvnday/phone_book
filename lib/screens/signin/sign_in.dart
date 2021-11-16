
import 'package:flutter/material.dart';

import 'package:phone_book/constants.dart';
import 'package:phone_book/screens/signin/components/body.dart';

class SignInScreen extends StatefulWidget {
  static String routeName="/sign_in";
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
    backgroundColor: primaryColor,
    body: Body(),
    );
  }
}