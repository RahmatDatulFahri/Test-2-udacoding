// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:bismilah_bisa/tampilan_register.dart';
import 'package:flutter/material.dart';

class Tampilan_Login extends StatefulWidget {
  const Tampilan_Login({super.key});

  @override
  State<Tampilan_Login> createState() => _Tampilan_LoginState();
}

class _Tampilan_LoginState extends State<Tampilan_Login> {
  @override
  Widget build(BuildContext context) {
    print("Login");
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Image.asset(
                    'assets/images/login.png',
                    width: 100,
                    height: 100,
                  )),
            ),
            SizedBox(height: 30),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Login to your account",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10), //sidebox jarak antar konten
            // codingan dibawah untuk TextFiled
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    obscureText: false,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15),
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 10),
                      // icon: Icon(Icons.account_circle_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    obscureText: true,
                    onChanged: (value) {},
                    // obscuringCharacter: '*',
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15),
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 10),
                      // icon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(right: 20),
                      // color: Colors.amber,
                      child: Text(
                        "Forget password?",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        alignment: Alignment.center),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Or Sign In With",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/google.png')),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/facebook.png')),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/twitter.png')),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text("Don't have an account?"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Tampilan_Register(),
                    ));
              },
              child: Text(
                'Sign Up!',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
