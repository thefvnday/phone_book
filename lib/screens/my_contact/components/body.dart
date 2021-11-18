import 'dart:io';

import 'package:flutter/material.dart';
import 'package:phone_book/domain/contact.dart';
import 'package:phone_book/providers/auth_provider.dart';
import 'package:phone_book/providers/contact_provider.dart';

import 'package:phone_book/screens/account/account.dart';
import 'package:phone_book/screens/components/header.dart';
import 'package:phone_book/screens/components/search_field.dart';

import 'package:phone_book/constants.dart';
import 'package:phone_book/screens/create_account/create_account.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  // Future <List<Contact>> _getContacts()async{
  // var jsonData = Contact;

  // List<Contact> contacts=[];

  //  for(var u in jsonData){
  //    Contact contact = Contact(id: u['id'],name: u['name'],phone: u['phone'],job: u['job'],company: u['company'],image: u[''],email: u['email']);
  //    contacts.add(contact);
  //  }
  //  print(contacts.length);
  //  return contacts;
  // }
  // final Future<String> _dataContact = Future<String>.delayed(
  //   const Duration(seconds: 3),
  //   () => 'Data',
  // );

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
 

  @override
  Widget build(BuildContext context) {
    context.read<ContactProvider>().getAllContact();
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 27, right: 24, bottom: 5),
      child: Column(
        children: [
          // Center(child: Text('', style: TextStyle(fontSize: 1))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Header(
                text: 'My Conctacts',
                press: () {},
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, createAccount.routeName);
                },
                icon: Icon(Icons.add_circle),
              )
            ],
          ),
          Search_Field(),
          Expanded(
            child: Consumer<ContactProvider>(
              builder: (context, provider, child) {
                List<Contact> dataContact = provider.allContacts;
                print("LENGTH ${dataContact.length} ");
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                        trailing: Icon(Icons.settings),
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage('${dataContact[index].image}'),
                          radius: 20,
                        ),
                        title: Text('${dataContact[index].name}'),
                        subtitle: Text('${dataContact[index].phone}'));
                        
                  },  
                  itemCount: dataContact.length,
                );
              },
            ),
          ),
          // 
        ],
      ),
    );
  }

  Widget _rowContact(
          {required String name,
          required String phone,
          required BuildContext context}) =>
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, Account.routeName);
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: secondaryLightColor,
                    child: ClipOval(
                      child: Icon(
                        Icons.person_sharp,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 100),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        phone,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [Icon(Icons.settings)],
            )
          ],
        ),
      );
}
