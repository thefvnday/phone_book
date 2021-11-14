import 'package:flutter/material.dart';
import 'package:phone_book/Screens/Account/components/body.dart';

import 'package:phone_book/constants.dart';


class Account extends StatelessWidget {
  static String routeName="/account";
  const Account({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: PrimaryLightColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: PrimaryLightColor,
        title: Text('Back',style: TextStyle(color: Colors.black),),
      ),
      body: Body()
    );
  }
}