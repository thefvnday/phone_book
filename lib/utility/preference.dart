import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper{
  void savetoken(String token)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("tokenlogin", token);
  }

  Future<String?> getToken()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("tokenlogin");
  }
}