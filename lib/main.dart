import 'package:flutter/material.dart';
import 'package:phone_book/Screens/Welcome/welcome.dart';
import 'package:phone_book/constants.dart';
import 'package:phone_book/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Phone Book',
      theme: ThemeData(
       
         
      ),
     initialRoute: WelcomeScreen.routeName,
     routes:  routes,
    );
  }
}
