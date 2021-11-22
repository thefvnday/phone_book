import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phone_book/domain/contact.dart';
import 'package:phone_book/utility/preference.dart';

class CreateContact extends ChangeNotifier {
  Future<Contact> createContact(String name, String phone, String job,
      String company, String email) async {
    final Map<String, dynamic>? apiBodyData = {
      "name": name,
      "phone": phone,
      "job": job,
      "company": company,
      "email": email,
    };
    try {
      SharedPreferenceHelper helper = SharedPreferenceHelper();
      var token = await helper.getTokenContact();
      print(token);
      Dio dio = Dio();
      dio.options.headers['Authorization'] = "Bearer $token";
      var response = await dio.post(
          'https://phone-book-api.herokuapp.com/api/v1/contacts',
          data: apiBodyData);
      // print(response.data);
      // return response;
      return Contact.fromJson(response.data["data"]);
    } catch (e) {

      rethrow;
    }
  }


  
 

  
}
