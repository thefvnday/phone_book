

import 'package:flutter/material.dart';
import 'package:phone_book/providers/auth_provider.dart';
import 'package:phone_book/providers/contact_provider.dart';
import 'package:phone_book/providers/create_contact_provider.dart';
import 'package:phone_book/screens/welcome/welcome.dart';
import 'package:phone_book/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (context)=>AuthProvider()),
        ChangeNotifierProvider(create:(context)=>CreateContact ()),
        ChangeNotifierProvider(create: (context)=>ContactProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Phone Book',
        theme: ThemeData(  
        ),
       initialRoute: WelcomeScreen.routeName,
       routes:  routes,
      ),
    );
  }
}
