import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class AuthProvider extends ChangeNotifier{
  // Status _loggedInStatus = Status.NotLoggedI;
  // Status _registeredInStatus = Status.NotRegistered;

  // Status get loggedInStatus => _loggedInStatus;

  // set loggedInStatus(Status value){
  //   _loggedInStatus=value;
  // }

  //  Status get registeredInStatus => _loggedInStatus;
  //  set registeredInStatus(Status value){
  //   _registeredInStatus=value;
  // }

  Future<Response<dynamic>> register(String username, String email,String password)async{
    final Map<String,dynamic> apiBodyData ={
      "name":username,
      "email" : email,
      "password" : password,
      "confirmPassword": password,

    };
    try {   
     var response = await Dio().post('https://phone-book-api.herokuapp.com/api/v1/signup', data: apiBodyData );
     print(response);
     return response;
    } catch (e) {
      throw e;
    }
  }

   Future<Response<dynamic>> login(String email,String password)async{
    final Map<String,dynamic> apiBodyData ={
      "email" : email,
      "password" : password,
    };
    try {
       var response = await Dio().post('https://phone-book-api.herokuapp.com/api/v1/signin', data: apiBodyData );
       return response;
    } catch (e) {
       throw e;
    }
  }

  
}