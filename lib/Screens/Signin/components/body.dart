import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phone_book/Screens/Componets/dashboard.dart';
import 'package:phone_book/Screens/MyContact/my_contact.dart';
import 'package:phone_book/Screens/Signup/sign_up.dart';
import 'package:phone_book/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:20),
                  child: TextButton(
                    onPressed: () {Navigator.pushNamed(context, SignUpScreen.routeName);},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Positioned(
            bottom: 0,
            left: 0,
            child: SvgPicture.asset(
              "assets/icons/image.svg",
              width: size.width * 0.60,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2.0),
                ),
                labelText: 'Email Address',
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
              ),
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                enabledBorder: 
                OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2.0),
                ),
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.password_rounded,
                  color: Colors.white,
                ),
              
              ),
              style: TextStyle(fontSize: 20, color: Colors.white,),
              
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Dashboard();
                    },
                  ),
                );},
            child: Text(' LOGIN '),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.fromLTRB(153.0, 20.0, 153.0, 20.0),
            ),
          )
        ]),
      ),
    );
  }
}
