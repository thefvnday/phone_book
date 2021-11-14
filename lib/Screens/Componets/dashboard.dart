
import 'package:flutter/material.dart';
import 'package:phone_book/Screens/Favorites/foavorites.dart';
import 'package:phone_book/Screens/MyContact/my_contact.dart';
import 'package:phone_book/Screens/Recent/recent.dart';
import 'package:phone_book/constants.dart';

class Dashboard extends StatefulWidget {
  static String routeName = "/mycontact";
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  final screens = [
    Recent(),
    MyContact(),
    Favorites()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryLightColor,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: BottonNavColor,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Recent',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_sharp),
            label: 'My Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
