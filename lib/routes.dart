
import 'package:flutter/widgets.dart';
import 'package:phone_book/Screens/Account/account.dart';
import 'package:phone_book/Screens/MyContact/my_contact.dart';
import 'package:phone_book/Screens/Signin/sign_in.dart';
import 'package:phone_book/Screens/Signup/sign_up.dart';
import 'package:phone_book/Screens/Welcome/welcome.dart';

final Map<String, WidgetBuilder>routes = {
  WelcomeScreen.routeName:(context)=>WelcomeScreen(),
  SignInScreen.routeName:(context)=>SignInScreen(),
  SignUpScreen.routeName:(context)=>SignUpScreen(),
  Account.routeName:(context)=>Account(),
//   MyContact.routeName:(context)=>MyContact(),
};