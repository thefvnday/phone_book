import 'package:flutter/material.dart';
import 'package:phone_book/constants.dart';
import 'package:phone_book/domain/contact.dart';
import 'package:phone_book/providers/contact_id_provider.dart';
import 'package:phone_book/screens/my_contact/my_contact.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    var contact = ModalRoute.of(context)!.settings.arguments as Contact;
    return Container(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 90,
                backgroundImage: NetworkImage(contact.image),
              ),
            ),
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                  top: 40,
                )),
                Text(
                  contact.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ],
            ),
            Container(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 30,
                      ),
                      Padding(padding: EdgeInsets.only(top: 50, right: 30)),
                      Text(
                        contact.phone,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.other_houses_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      Padding(padding: EdgeInsets.only(top: 50, right: 30)),
                      Text(
                        contact.company,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.engineering_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      Padding(padding: EdgeInsets.only(top: 50, right: 30)),
                      Text(
                        contact.job,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.local_post_office_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      Padding(padding: EdgeInsets.only(top: 50, right: 30)),
                      Text(
                        contact.company,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: (){},
                        child: const Text(
                          'Update',
                          textAlign: TextAlign.center,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                        ),
                      ),
                      SizedBox(width: 5,),
                      ElevatedButton(
                        onPressed: (){},
                        child: const Text(
                          'Delete',
                          textAlign: TextAlign.center,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
