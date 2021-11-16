import 'package:flutter/material.dart';
import 'package:phone_book/screens/signin/sign_in.dart';
import 'package:phone_book/screens/signup/sign_up.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
