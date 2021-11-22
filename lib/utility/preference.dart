
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phone_book/screens/signin/sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
//  final SharedPreferences sharedPreferences;
//  SharedPreferenceHelper(this.sharedPreferences);



  // Token Login
   saveTokenLogin(String token) async {
    var sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setString("tokenlogin", token);
  }

  Future<String> getTokenLogin() async {
    try {
      var sharedPreferences = await SharedPreferences.getInstance();
      String? token = sharedPreferences.getString('tokenlogin');

      

      if (token == null) {
        throw Exception();
      }

      return token;
    } catch (e) {
      print("---------------ERROR1------------");
    }
    return "";
    // return sharedPreferences.getString("tokenlogin");
  }

  void autoLogin()async{
     SharedPreferences prefs = await SharedPreferences.getInstance();
     String? token = prefs.getString('token');
     if(token !=null){
       print(token);
       
     }
  }

  //Token All Contact
  void setTokenContact(String kontaktoken) async {
    var sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('tokenkontak', kontaktoken).then((value) {
      Timer(Duration(seconds: 2),()=>autoLogin());
    });
  }

  Future<String>getTokenContact()async{
    try {
      var sharedPreferences = await SharedPreferences.getInstance();
      var token = sharedPreferences.getString('tokenkontak');

      if (token == null) {
        throw Exception();
      }

      return token;
    } catch (e) {
      print("---------------ERROR------------");
    }
    return "";
  }


  //Token Contact by Id
   void setTokenById(String kontaktoken) async {
    var sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('tokenid', kontaktoken);
  }

  Future<String>getTokenById()async{
    try {
      var sharedPreferences = await SharedPreferences.getInstance();
      var token = sharedPreferences.getString('tokenid');

      if (token == null) {
        throw Exception();
      }

      return token;
    } catch (e) {
      print("---------------ERROR------------");
    }
    return "";
  }
//     Future<SharedPreferenceHelper>init()async{
//      if(sharedPreferences)
//     return SharedPreferenceHelper(sharedPreferences);
//  }
}
// 

 