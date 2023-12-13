// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:bismilah_bisa/tampilan_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Get.to(Tampilan_Login());
    });
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Container(
          child: Image.asset(
            'assets/images/ImageSplash.png',
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
