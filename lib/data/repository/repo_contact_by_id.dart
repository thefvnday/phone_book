import 'package:dio/dio.dart';
import 'package:phone_book/domain/contact.dart';
import 'package:phone_book/utility/preference.dart';

class RepoContactById {
  Future<Contact> getContactById(String id) async {
    SharedPreferenceHelper helper = SharedPreferenceHelper();
    var token = await helper.getTokenContact();

    Dio dio = Dio();
    dio.options.headers['Authorization'] = "Bearer $token";
    var response = await dio.get(
      'https://phone-book-api.herokuapp.com/api/v1/contacts/' + id,
    );
    print(response.data);
    Contact byId = Contact.fromJson(response.data['data']);
    try {
      print(byId);
      return byId;
    } catch (e) {
      print("------EROR Get Contact By Id-------");
      rethrow;
    }
  }

  Future<void> deleteContactById(int id) async {
    SharedPreferenceHelper helper = SharedPreferenceHelper();
    var token = await helper.getTokenContact();

    Dio dio = Dio();
    dio.options.headers['Authorization'] = "Bearer $token";

    try {
      var response = await dio.delete('https://phone-book-api.herokuapp.com/api/v1/contacts/$id');
      print(response.data);
     return response.data;
    } catch (e) {
      rethrow;
    }
  }

  // Future<Contact> updateContact(String id, String name, String phone,
  //     String job, String company, String email) async {
  //   final Map<String, dynamic>? apiBodyData = {
  //     "name": name,
  //     "phone": phone,
  //     "job": job,
  //     "company": company,
  //     "email": email,
  //   };
  //   try {
  //     SharedPreferenceHelper helper = SharedPreferenceHelper();
  //     var token = await helper.getTokenContact();
  //     print(token);
  //     Dio dio = Dio();
  //     dio.options.headers['Authorization'] = "Bearer $token";
  //     var response = await dio.put(
  //         'https://phone-book-api.herokuapp.com/api/v1/contacts/',
  //         data: apiBodyData);
  //     // print(response.data);
  //     // return response;
  //     return Contact.fromJson(response.data["data"]);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<Contact> putContactById(String id)async{
  //   SharedPreferenceHelper helper = SharedPreferenceHelper();
  //   var token = await helper.getTokenContact();

  //   Dio dio = Dio();
  //   dio.options.headers['Authorization'] = "Barer $token";
  //   var response = await dio.put('https://phone-book-api.herokuapp.com/api/v1/contacts/'+id,);
  //   print(response.data);
  //   Contact byId= Contact.fromJson(response.data['data']);
  //     try {
  //     print(byId);
  //     return byId;
  //     } catch (e) {
  //     print("------EROR-------");
  //       rethrow;
  //   }
  // }
}
