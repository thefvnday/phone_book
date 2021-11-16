import 'package:flutter/material.dart';

import 'package:phone_book/screens/account/account.dart';
import 'package:phone_book/screens/components/header.dart';
import 'package:phone_book/screens/components/search_field.dart';

import 'package:phone_book/constants.dart';
import 'package:phone_book/screens/create_account/create_account.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Center(child: Text('', style: TextStyle(fontSize: 1))),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 27, right: 24, bottom: 5),
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
                       Navigator.pushNamed(context, createAccount.routeName);
                      },
                      icon: Icon(Icons.add_circle),
                    )
                  ],
                ),
                Search_Field(),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [   
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 45, bottom: 15, top: 1),
                    child: Row(
                      children: [
                        Text('A',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold ),)
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){ Navigator.pushNamed(context, Account.routeName);},
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: secondaryLightColor,
                                child: ClipOval(
                                  child: Icon(
                                    Icons.person_sharp,
                                    color: Colors.black,
                                    size:30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40,right: 100),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('Alisson'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('+ 628212113311')
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                           Icon(Icons.settings)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
