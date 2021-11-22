import 'package:flutter/material.dart';
import 'package:phone_book/data/repository/repo_contact_by_id.dart';
import 'package:phone_book/domain/contact.dart';
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
  
}