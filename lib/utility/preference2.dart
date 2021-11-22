import 'package:phone_book/utility/preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper{
  SharedPreferences sharedPreferences;
  SharedPreferenceHelper(this.sharedPreferences);

  Future<SharedPreferenceHelper>init()async{
    if(sharedPreferences==null){
      sharedPreferences = await SharedPreferences.getInstance();
    }
    return SharedPreferenceHelper(sharedPreferences);
  }

  saveTokenLogin(String token)async{
    sharedPreferences.setString('tokenlogin', token);
  }
}