import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_book/screens/my_contact/my_contact.dart';
import 'package:phone_book/screens/signin/sign_in.dart';
import 'package:phone_book/screens/signup/sign_up.dart';
import 'package:phone_book/utility/preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  checkingSaveData() async {
    SharedPreferenceHelper helper = await SharedPreferenceHelper();
    var token = helper.getTokenLogin;
    if (token == null) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return SignInScreen();
        },
      ));
    }else{
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return MyContact();
        },
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("PHONE BOOK",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.white)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                      child: Text('SignIn'),
                    )
                  ],
                ),
                SizedBox(
                  width: 4,
                ),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SignUpScreen.routeName);
                        },
                        child: Text('Register'))
                  ],
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
