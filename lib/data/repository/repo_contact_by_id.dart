

import 'package:dio/dio.dart';
import 'package:phone_book/domain/contact.dart';
import 'package:phone_book/utility/preference.dart';

class RepoContactById{
  Future<Contact> getContactById(String id)async{
      SharedPreferenceHelper helper =  SharedPreferenceHelper();
      var token = await helper.getTokenContact();

      Dio dio = Dio();
      dio.options.headers['Authorization'] = "Bearer $token";
      var response = await dio.get(
        'https://phone-book-api.herokuapp.com/api/v1/contacts/'+id,
      );
      print(response.data);
      Contact byId= Contact.fromJson(response.data['data']);
      try {
      print(byId);
      return byId;
      } catch (e) {
      print("------EROR-------");
        rethrow;
    }
     
  }
}