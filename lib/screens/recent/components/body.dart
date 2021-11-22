import 'package:flutter/material.dart';
import 'package:phone_book/screens/components/header.dart';
import 'package:phone_book/screens/components/search_field.dart';
import 'package:phone_book/screens/welcome/welcome.dart';
import 'package:phone_book/utility/preference.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
  //   Future Logout()async{
  //   //  SharedPreferenceHelper KeyHelper = SharedPreferenceHelper();
  //    final KeyHelper = await SharedPreferences.getInstance();
  //    final token = KeyHelper.getString('token') ?? " ";

  //    if(token != "0"){
  //      print(token);
  //      Navigator.of(context).push(MaterialPageRoute(
  //       builder: (context) {
  //         return WelcomeScreen();
  //       },
  //     ));
  //    }
  // }
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
                  IconButton(
                      onPressed: () {
                        //  Navigator.pushNamed(context, createAccount.routeName);
                      },
                      icon: Icon(Icons.logout)
                    )
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