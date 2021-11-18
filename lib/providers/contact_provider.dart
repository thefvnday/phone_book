import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:phone_book/data/repository/repo_contact.dart';
import 'package:phone_book/domain/contact.dart';
import 'package:phone_book/utility/preference.dart';
import 'package:provider/provider.dart';

class ContactProvider with ChangeNotifier {
  List<Contact> allContacts = [];

  void getAllContact() async {
    try {
      List<Contact> dataContact = await RepoContact().getAllContact();
      //  return allContact;
      allContacts = dataContact;
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }
}
