// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

//import 'package:cities/forgetPassword.dart';
import 'package:cities/homeScreen.dart';
import 'package:cities/signUp.php.dart ';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String errormsg;
  late bool error, showprogress;
  String email = "Email", password = "Password";
  var _email = TextEditingController();
 var  _password=TextEditingController();

  startLogin() async {
    String apiurl = "http://192.168.1.19 /php_corse/log%20in.php"; //api url

    print(email);

    var response = await http
        .post(Uri.parse(apiurl), body: {'Email': email, 'Password': password});

    if (response.statusCode == 200) {
      var jsondata = json.decode(response.body);
      if (jsondata["error"]) {
        setState(() {
          showprogress = false;
          error = true;
          errormsg = jsondata["message"];
        });
      } else {
        if (jsondata["success"]) {
          setState(() {
            error = false;
            showprogress = false;
          });

           String fullname = jsondata["fullname"];
           print(fullname);
        } else {
          showprogress = false;
          error = true;
          errormsg = "Something went wrong.";
        }
      }
    } else {
      setState(() {
        showprogress = false;
        error = true;
        errormsg = "Error during connecting to server.";
      });
    }
  }

  @override
  void initState() {
    email = "";
    password = "";
    errormsg = "";
    error = false;
    showprogress = false;

    super.initState();
  }

  bool hidePassword = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Center(
          child: Text(
            "Take a tour",
            style: TextStyle(
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
          MaterialButton(
            padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 55.0),
            textColor: Colors.white,
            color: Colors.orangeAccent,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: Colors.orangeAccent)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Log In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Do not have account",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                print(email);
                print(password);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text(
                "Sign up",
                style: TextStyle(color: Colors.orangeAccent),
              ),
            ),
          ]),
        ],
      ),
      ) );
  }
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
String? validatePassword(String value) {
  RegExp regex =
  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (value.isEmpty) {
    return 'Please enter password';
  } else {
    if (!regex.hasMatch(value)) {
      return  """ Password must be:
                                   at least 8 characters in length    
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
