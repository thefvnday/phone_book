import 'package:flutter/material.dart';
import 'package:phone_book/screens/components/header.dart';
import 'package:phone_book/screens/components/search_field.dart';


class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text('', style: TextStyle(fontSize: 1)),
        Container(
            child: Padding(
          padding: const EdgeInsets.only(top: 45, left: 27, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Header(
                    text: 'Recent',
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Search_Field(),
            ],
          ),
        )),
      ],
    ));
  }
}