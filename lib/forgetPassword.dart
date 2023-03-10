// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {

  @override
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
      body: Column(
        children: [
          Image.asset("assets/images/logo.jpeg",scale: 4,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              cursorColor: Colors.orangeAccent,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orangeAccent)),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)),),
                prefixIcon: Icon(Icons.email,color: Colors.orangeAccent,),
                hintStyle: TextStyle(
                    color: Colors.orangeAccent
                ),
                hintText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
            child: MaterialButton(
              padding: EdgeInsets.symmetric(
                  vertical: 14.0, horizontal: 55.0),
              textColor: Colors.white,
              color: Colors.orangeAccent,
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                      color: Colors.orangeAccent)),
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
          ),
        ],
      ),
    );
  }
}
