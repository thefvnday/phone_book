import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:phone_book/domain/contact.dart';
import 'package:phone_book/utility/preference.dart';

class RepoContact{
  Future<List<Contact>> getAllContact()async{
    SharedPreferenceHelper helper = SharedPreferenceHelper();
        var token = await helper.getTokenContact();

        Dio  dio = Dio();
        dio.options.headers['Authorization'] = "Bearer $token";
        var response = await dio.get(
          'https://phone-book-api.herokuapp.com/api/v1/contacts',
        );
        List<Contact> allContacts = Contact.allContact(response.data['data']);
        print(allContacts);
        return allContacts;
  }
}