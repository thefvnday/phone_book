
import 'package:flutter/material.dart';
import 'package:phone_book/screens/favorites/foavorites.dart';
import 'package:phone_book/screens/my_contact/my_contact.dart';
import 'package:phone_book/screens/recent/recent.dart';
import 'package:phone_book/constants.dart';

class Dashboard extends StatefulWidget {
  static String routeName = "/dashboard";
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
      backgroundColor: primaryLightColor,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: bottonNavColor,
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
