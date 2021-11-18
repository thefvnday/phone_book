import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
//  final SharedPreferences sharedPreferences;
//  SharedPreferenceHelper(this.sharedPreferences);

  void saveTokenLogin(String token) async {
    var sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setString("tokenlogin", token);
  }

  Future<String> getTokenLogin() async {
    try {
      var sharedPreferences = await SharedPreferences.getInstance();
      var token = sharedPreferences.getString('tokenlogin');

      if (token == null) {
        throw Exception();
      }

      return token;
    } catch (e) {
      print("---------------ERROR------------");
    }
    return "";
    // return sharedPreferences.getString("tokenlogin");
  }

  void setTokenContact(String kontaktoken) async {
    var sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('tokenkontak', kontaktoken);
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
}
//   Future<SharedPreferenceHelper>init()async{
     
//      return SharedPreferenceHelper(sharedPreferences);
//  }

 