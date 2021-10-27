// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  //WidgetsApp //MaterialApp //CupertinoApp
  runApp(MaterialApp(
    home: RegisterPage(),

  ));
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = const Color.fromARGB(255, 36, 37, 45);
    Color tFocusColor = const Color.fromARGB(255, 117, 20, 141);
    Color tFillColor = const Color.fromARGB(255, 45, 45, 45);
    Color buttonColor1 = const Color.fromARGB(255, 142, 63, 255);
    Color buttonColor2 = const Color.fromARGB(255, 181, 55, 254);
    const String title = "Sign Up";
    const String email = "Email";
    const String username = "Username";
    const String password = "Password";
    const String button = "Sign Up";
    final userNameCont = TextEditingController();
    final emailCont = TextEditingController();
    final passwordCont = TextEditingController();

    return Scaffold(

      body: Container(
        color: backgroundColor,

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                padding: EdgeInsets.only(),

                child: Container(
                  margin: EdgeInsets.only(left: 50),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,          
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 20,
                      )),
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(0),
                child: SizedBox(
                  height: 200,
                ),
              ),

              Container(
                margin: EdgeInsets.only(right: 200, top: 0),
                child: Text(
                  username,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
                child: TextField(
                  controller: userNameCont,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    fillColor: tFillColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15.0),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: tFocusColor),
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(right: 220),
                child: Text(
                  email,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 20),

                child: TextField(
                  controller: emailCont,
                  style: TextStyle(
                    color: Colors.white,
                  ),

                  decoration: InputDecoration(
                    fillColor: tFillColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusColor: Colors.black,

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: tFocusColor),
                      borderRadius: BorderRadius.circular(15.0)
                    )
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(right: 200),
                child: Text(
                  password,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
                child: TextField(
                  obscureText: true,
                  controller: passwordCont,

                  style: TextStyle(
                    color: Colors.white,
                  ),
                  
                  decoration: InputDecoration(
                    
                    filled: true,
                    fillColor: tFillColor,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15.0)
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: tFocusColor),
                      borderRadius: BorderRadius.circular(15.0),
                    )
                  ),
                ),
              ),

              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.fromLTRB(110, 20, 110, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [buttonColor1, buttonColor2],
                    ),
                  ),
                  child: Text(
                    button,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ),

                onTap: () {
                  print(userNameCont.text);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}