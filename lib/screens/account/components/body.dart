import 'package:flutter/material.dart';
import 'package:phone_book/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          const Center(
            child: CircleAvatar(
              radius: 90,
              backgroundColor: secondaryLightColor,
              child: ClipOval(
                child: Icon(
                  Icons.person_sharp,
                  color: Colors.black,
                  size: 140,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                top: 40,
              )),
              Text(
                'Michael Ballacr',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
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
                      '085801492041',
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
                      'Refactory',
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
                      'Engineer',
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
                      'hayhay@gmail.com',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
