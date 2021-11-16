import 'package:flutter/material.dart';
import 'package:phone_book/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top:40),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                width: 150,
                height: 150,
                child: ClipOval(
                  child: Icon(
                    Icons.person_sharp,
                    color: Colors.black,
                    size: 140,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    height: size.height*0.04,
                    width: size.width*0.07,
                    decoration: BoxDecoration(
                      color: secondaryColor
                    ),
                    child: TextField(
                      autofocus: false,
                      obscureText: true,
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.pinkAccent),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Hello input here',
                        isDense: true,
                        // contentPadding: EdgeInsets.only(
                        //     left: 5.0.w, bottom: 1.0.h, top: 1.0.h, right: 5.0.w),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
