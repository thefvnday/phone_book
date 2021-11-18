import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:phone_book/constants.dart';
import 'package:phone_book/providers/create_contact_provider.dart';
import 'package:phone_book/screens/account/account.dart';
import 'package:phone_book/screens/my_contact/my_contact.dart';
import 'package:provider/src/provider.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final createkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController emailController = TextEditingController();


  bool validation(){
    if(nameController.text.isEmpty){
      return false;
    }
    if(phoneController.text.isEmpty){
      return false;
    }
    if(jobController.text.isEmpty){
      return false;
    }
    if(companyController.text.isEmpty){
      return false;
    }
    if(emailController.text.isEmpty){
      return false;
    }
    return true;
  }
  void doCreate()async{
    if(validation()){
      var createResult =  context.read<CreateContact>().createContact(
          nameController.text,
          phoneController.text,
          jobController.text,
          companyController.text,
          emailController.text);
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Account();
      }));
    }else{
      Flushbar(
        message: "Please complate ",
        icon: Icon(
          Icons.info_outline,
          size: 28.0,
          color: Colors.blue[300],
        ),
        duration: const Duration(seconds: 3),
        leftBarIndicatorColor: Colors.blue[300],
      ).show(context);
    }

  }

  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return ListView(
      children:[ 
        Form(
        key: createkey,
        child: Container(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 25),
                child: Container(
                  width: size.width*0.5,
                  height: size.height*0.2,
                  child: ClipOval(
                    child: Icon(
                      Icons.person_sharp,
                      color: Colors.black,
                      size: 140,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width*0.84,
                    height:size.height*0.08,
                    decoration: BoxDecoration(color: secondaryLightColor),
                    child: TextFormField(
                      controller: nameController,
                      autofocus: false,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.person_sharp,
                          color: Colors.black,
                        ),
                      ),
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width*0.40,
                    height:size.height*0.08,
                    decoration: BoxDecoration(color: secondaryLightColor),
                    child: TextFormField(
                      autofocus: false,
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.black,
                        ),
                      ),
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: size.width*0.40,
                    height:size.height*0.08,
                    decoration: BoxDecoration(color: secondaryLightColor),
                    child: TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                      ),
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width*0.40,
                    height:size.height*0.08,
                    decoration: BoxDecoration(color: secondaryLightColor),
                    child: TextField(
                      controller: companyController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Company',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.home,
                          color: Colors.black,
                        ),
                      ),
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: size.width*0.40,
                    height:size.height*0.08,
                    decoration: BoxDecoration(color: secondaryLightColor),
                    child: TextField(
                      controller: jobController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Job',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.build_outlined,
                          color: Colors.black,
                        ),
                      ),
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: doCreate,
                child: const Text(
                  'CREATE ACCOUNT',
                  textAlign: TextAlign.center,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  padding: EdgeInsets.fromLTRB(92.0, 20.0, 92.0, 20.0),
                ),
              )
            ],
          ),
        ),
      ),
      ]
    );
  }
}
