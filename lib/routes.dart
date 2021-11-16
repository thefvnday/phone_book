

import 'package:flutter/widgets.dart';
import 'package:phone_book/screens/account/account.dart';
import 'package:phone_book/screens/components/dashboard.dart';
import 'package:phone_book/screens/create_account/create_account.dart';
import 'package:phone_book/screens/signin/sign_in.dart';
import 'package:phone_book/screens/signup/sign_up.dart';
import 'package:phone_book/screens/welcome/welcome.dart';

final Map<String, WidgetBuilder>routes = {
  WelcomeScreen.routeName:(context)=>WelcomeScreen(),
  SignInScreen.routeName:(context)=>SignInScreen(),
  SignUpScreen.routeName:(context)=>SignUpScreen(),
  Account.routeName:(context)=>Account(),
  Dashboard.routeName:(context)=>Dashboard(),
  createAccount.routeName:(context)=>createAccount(),
//   MyContact.routeName:(context)=>MyContact(),
};