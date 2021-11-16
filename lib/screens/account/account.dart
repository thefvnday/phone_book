import 'package:flutter/material.dart';



import 'package:phone_book/constants.dart';
import 'package:phone_book/screens/account/components/body.dart';


class Account extends StatelessWidget {
  static String routeName="/account";
  const Account({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: primaryLightColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: primaryLightColor,
        title: Text('Back',style: TextStyle(color: Colors.black),),
      ),
      
      body: Body()
    );
  }
}