
import 'package:flutter/material.dart';
import 'package:phone_book/Screens/Signin/components/body.dart';
import 'package:phone_book/constants.dart';

class SignInScreen extends StatelessWidget {
  static String routeName="/sign_in";
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
    backgroundColor: PrimaryColor,
    body: Body(),
    );
  }
}