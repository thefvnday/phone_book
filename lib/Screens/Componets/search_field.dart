import 'package:flutter/material.dart';
import 'package:phone_book/constants.dart';



class Search_Field extends StatelessWidget {
  const Search_Field({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        width: 348,
        height: 35,
        decoration: BoxDecoration(
          color: SecondaryLightColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Search Contact",
            prefixIcon: Icon(Icons.search, color:Colors.black),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 17,
              vertical: 12,
            )
          ),
        ),
      ),
    );
  }
}