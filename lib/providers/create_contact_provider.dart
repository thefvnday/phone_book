import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


class CreateContact extends ChangeNotifier{
  Future<Response<dynamic>> create_contact(String name, String phone,String job, String company, String email)async{
    final Map<String,dynamic> apiBodyData ={
      "name": name,
      "phone" : phone,
      "job" : job,
      "company": company,
      "email": email,

    };
    try {   
     var response = await Dio().post('https://phone-book-api.herokuapp.com/api/v1/contacts', data: apiBodyData );
     return response;
    } catch (e) {
      throw e;
    }
  }
}