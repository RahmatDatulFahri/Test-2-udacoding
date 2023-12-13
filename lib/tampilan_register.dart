// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_print

import 'package:bismilah_bisa/tampilan_login.dart';
import 'package:flutter/material.dart';

class Tampilan_Register extends StatefulWidget {
  const Tampilan_Register({super.key});

  @override
  State<Tampilan_Register> createState() => _Tampilan_RegisterState();
}

class _Tampilan_RegisterState extends State<Tampilan_Register> {
  @override
  Widget build(BuildContext context) {
    print("Register");
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading: Builder(
      //     builder: (BuildContext context) {
      //       return IconButton(
      //         icon: const Icon(Icons.arrow_back_outlined, color: Colors.black),
      //         onPressed: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => Tampilan_Login(),
      //               ));
      //         },
      //       );
      //     },
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Image.asset(
                    'assets/images/register.png',
                    width: 100,
                    height: 100,
                  )),
            ),
            SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Create your account')),
              ],
            ),
            SizedBox(height: 20), //sidebox jarak antar konten
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
                      // hintStyle:
                      //     TextStyle(color: Colors.green[200], fontSize: 10),
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
                    // obscuringCharacter: "*",
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15),
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 10),
                      // hintStyle:
                      //     TextStyle(color: Colors.green[200], fontSize: 10),
                      // icon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    obscureText: true,
                    onChanged: (value) {},
                    // obscuringCharacter: "*",
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15),
                      hintText: 'Confirm password',
                      hintStyle: TextStyle(fontSize: 10),
                      // icon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Row(
                //   children: [
                //     Container(
                //       margin: EdgeInsets.only(left: 350),
                //       // color: Colors.amber,
                //       child: Text(
                //         "Lupa Password",
                //         style: TextStyle(color: Colors.grey, fontSize: 15),
                //       ),
                //     ),
                //   ],
                // ),
                Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tampilan_Login(),
                          ));
                    },
                    child: Center(child: Text('Sign Up')),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Or Sign Up With",
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
    );
  }
}
