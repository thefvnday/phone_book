import 'package:flutter/material.dart';
import 'package:phone_book/Screens/Account/account.dart';
import 'package:phone_book/Screens/Componets/header.dart';
import 'package:phone_book/Screens/Componets/search_field.dart';

import 'package:phone_book/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(child: Text('', style: TextStyle(fontSize: 1))),
          Container(
              child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 27, right: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Header(
                      text: 'My Conctacts',
                      press: () {},
                    ),
                    IconButton(
                      onPressed: () {
                         Navigator.pushNamed(context, Account.routeName);
                      },
                      icon: Icon(Icons.add_circle),
                    )
                  ],
                ),
                Search_Field(),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
