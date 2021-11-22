import 'package:flutter/material.dart';
import 'package:phone_book/data/repository/repo_contact_by_id.dart';
import 'package:phone_book/domain/contact.dart';
import 'package:phone_book/utility/preference.dart';
import 'package:provider/provider.dart';


class ContactByIdProvider with ChangeNotifier{
  
  void getContactById(String id)async {
    try {
      Contact  dataContact = await RepoContactById().getContactById(id);
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }

  void deleteContact(int id)async{
    try {
      await RepoContactById().deleteContactById(id);
      notifyListeners();
      print('Success ');
    } catch (e) {
      rethrow;
    }
  }
  // void updateContactById(String id)async{
  //    try {
  //     Contact  dataContact = await RepoContactById().updateContact();
  //     notifyListeners();
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
  
}