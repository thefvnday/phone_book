

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phone_book/Screens/Signin/sign_in.dart';


class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: (){ Navigator.pushNamed(context,SignInScreen.routeName);},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20,),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20
                      ),
                    ),
                  )
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
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                  labelText: 'Your Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.person_sharp,
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
                  enabledBorder: OutlineInputBorder(
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
              onPressed: () {},
              child: Text(' REGISTER '),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.fromLTRB(153.0, 20.0, 153.0, 20.0),
              ),
            )
          ]),
        ),
      ),
    );
  }
}