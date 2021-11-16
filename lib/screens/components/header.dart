import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  final String text;
  final Function()?press;
  const Header({
    Key? key,required this.text,required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
    );
  }
}
