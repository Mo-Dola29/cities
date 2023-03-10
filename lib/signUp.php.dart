// ignore_for_file: file_names

import 'package:cities/loginScreen.php.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';


class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool hidePassword = true;

  String firstname = "First Name",
      password = "Password",
      lastname = "Last Name",
      email = "Email";

  var _firstname = TextEditingController();
  var _lastname = TextEditingController();
  var _password = TextEditingController();
  var _email = TextEditingController();
  signup()async{


  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Center(
          child: Text(

            "Take a tour",

            style: TextStyle(
              textBaseline: TextBaseline.ideographic,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo.jpeg",
              scale: 4,
            ),
            new TextFormField(
              controller: _firstname,

              cursorColor: Colors.orangeAccent,
              keyboardType: TextInputType.text,
              //onSaved:

              decoration: new InputDecoration(
                  hintText: "First Name",
                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.orangeAccent)),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.orangeAccent,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orangeAccent))),
            ),
            SizedBox(
              height: 20,
            ),
            new TextFormField(
              controller: _lastname,
              cursorColor: Colors.orangeAccent,
              keyboardType: TextInputType.text,
              //onSaved:

              decoration: new InputDecoration(
                  hintText: "Last Name",
                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.orangeAccent)),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.orangeAccent,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orangeAccent))),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              autovalidateMode: AutovalidateMode.always,
              child: TextFormField(
                validator: (value) => validateEmail(value),
                controller: _email,
                cursorColor: Colors.orangeAccent,
                keyboardType: TextInputType.emailAddress,
                decoration: new InputDecoration(
                    hintText: "Email",
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.orangeAccent)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.orangeAccent,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              autovalidateMode: AutovalidateMode.always,
              child: new TextFormField(
                controller: _password,
                cursorColor: Colors.orangeAccent,
                keyboardType: TextInputType.emailAddress,
                validator: (value) => validatePassword(value!),

                //onSaved:

                decoration: new InputDecoration(
                    hintText: "Password",
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.orangeAccent)),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.orangeAccent,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      color: Colors.orangeAccent,
                      icon: Icon(
                          hidePassword ? Icons.visibility_off : Icons.visibility),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: MaterialButton(
                padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 55.0),
                textColor: Colors.white,
                color: Colors.orangeAccent,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen() ),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: Colors.orangeAccent)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value))
      return 'Enter a valid email address';
    else
      return null;
  }
}
String? validatePassword(String value) {
  RegExp regex =
  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (value.isEmpty) {
    return 'Please enter password';
  } else {
    if (!regex.hasMatch(value)) {
      return  """ Password should contain:     
                                           Minimum 1 Upper case
                                           Minimum 1 lowercase
                                           Minimum 1 Numeric Number
                                           Minimum 1 Special Character
                                           Common Allow Character ( ! @ #  & * ~ ) """;
    } else {
      return   null;
    }
  }
}

